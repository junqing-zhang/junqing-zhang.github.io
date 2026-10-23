require 'yaml'
require_relative '../_plugins/author_highlighting'

Jekyll::Cache.disable_disk_cache!
config = YAML.load_file(File.expand_path('../_config.yml', __dir__))
site = Struct.new(:config, :source).new(config, File.expand_path('..', __dir__))
page = {}
renderer = Object.new.extend(Jekyll::Scholar::Utilities)
renderer.instance_variable_set(:@config, Jekyll::Scholar.defaults.merge(config['scholar']))
renderer.set_context_to(Liquid::Context.new({ 'page' => page }, {}, { site: site, page: page }))
plain = CiteProc::Ruby::Renderer.new(format: 'html', style: 'ieee', locale: 'en')

cases = {
  'first' => ['Junqing Zhang and Alice Smith', 1],
  'middle' => ['Alice Smith and Junqing Zhang and Bob Jones', 1],
  'last' => ['Alice Smith and Junqing Zhang', 1],
  'other full name' => ['John Zhang and Alice Smith', 0],
  'initial only' => ['J. Zhang and Alice Smith', 0],
  'same abbreviation together' => ['John Zhang and Junqing Zhang and James Zhang', 1],
  'surname only' => ['Junqing Zhangson and Alice Smith', 0],
  'BibTeX comma form' => ['Zhang, Junqing and Smith, Alice', 1]
}

cases.each do |label, (authors, expected)|
  entry = BibTeX.parse("@article{test, author={#{authors}}, title={J. Zhang in a title}, journal={Test Journal}, year={2024}}")['test']
  original = entry.to_s
  output = renderer.render_bibliography(entry, 1)
  raise "Wrong highlight count: #{label}" unless output.scan('<b>J. Zhang</b>').length == expected
  unstyled = plain.render(renderer.citation_item_for(entry, 1), renderer.styles('ieee').bibliography)
  raise "Formatting changed: #{label}" unless output.gsub(%r{</?b>}, '') == unstyled
  raise "Entry mutated: #{label}" unless entry.to_s == original
  raise "Inline citation highlighted: #{label}" if renderer.render_citation([entry]).include?('<b>')
end

entry = BibTeX.parse('@article{test, author={John Zhang and Junqing Zhang and James Zhang}, title={Test}, year={2024}}')['test']
output = renderer.render_bibliography(entry, 1)
raise 'Wrong person highlighted among namesakes' unless output.include?('J. Zhang, <b>J. Zhang</b>, and J. Zhang')
puts "Author highlighting passed: #{cases.length} identity/position cases, unchanged CSL formatting, source data and inline citations."

# Real database entries guard against differences between fixtures and Scholar input.
own = BibTeX.open(File.join(site.source, '_bibliography/my-publications.bib'))
other = BibTeX.open(File.join(site.source, '_bibliography/other-references.bib'))
fewsense = renderer.render_bibliography(own['yin2022fewsense'], 1)
crosssense = renderer.render_bibliography(other['zhang2018crosssense'], 2)
raise 'FewSense author not highlighted' unless fewsense.include?('G. Yin, <b>J. Zhang</b>, G. Shen')
raise 'CrossSense namesake highlighted' if crosssense.include?('<b>')

%i[first middle last].each do |position|
  candidate = own.entries.values.find do |paper|
    authors = paper.to_citeproc['author'] || []
    index = authors.index { |name| name['given'] == 'Junqing' && name['family'] == 'Zhang' }
    next false unless index
    case position
    when :first then index.zero?
    when :middle then index.positive? && index < authors.length - 1
    when :last then index == authors.length - 1 && index.positive?
    end
  end
  raise "No actual #{position}-author test entry" unless candidate
  output = renderer.render_bibliography(candidate, 1)
  raise "Actual #{position}-author entry not highlighted: #{candidate.key}" unless output.include?('<b>J. Zhang</b>')
  puts "Actual #{position}-author entry passed: #{candidate.key}"
end
puts 'Actual FewSense and CrossSense identity regressions passed.'
