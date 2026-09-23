#!/usr/bin/env ruby

require "yaml"

errors = []
page_layout_files = Dir.glob("**/*.md").reject { |path| path.start_with?("vendor/") }.select do |path|
  File.read(path).match?(/^layout:\s*page\s*$/)
end

page_layout_files.each do |path|
  source = File.read(path)
  errors << "#{path}: contains a Markdown H1; page layout already supplies the H1" if source.match?(/^#\s+/)

  source.scan(/<img\b[^>]*>/mi).each do |image|
    errors << "#{path}: image is missing alt text" unless image.match?(/\balt\s*=\s*["']/i)
  end
end

research_pages = Dir.glob("research/**/*.md").select do |path|
  File.read(path).include?("include research-nav.html")
end

permalinks = {}

research_pages.each do |path|
  source = File.read(path)
  front_matter = source[/\A---\s*\n(.*?)\n---\s*\n/m, 1].to_s
  section = front_matter[/^research_section:\s*(.+)$/, 1]
  permalink = front_matter[/^permalink:\s*(.+)$/, 1]

  errors << "#{path}: missing description" unless front_matter.match?(/^description:\s*\S/)
  errors << "#{path}: missing research_section" unless section
  errors << "#{path}: contains a legacy return-to-main-page link" if source.include?("Return to the Main Page")

  permalinks[permalink.strip] = path if permalink
end

navigation = YAML.safe_load_file("_data/research_navigation.yml")
navigation.each do |key, area|
  urls = [area["main_url"], *area.fetch("items", []).map { |item| item["url"] }]
  urls.each do |url|
    errors << "_data/research_navigation.yml: #{key} points to missing #{url}" unless permalinks.key?(url)
  end
end

canonical_redirects = {
  "/research/rffi/rffi_main_page/" => "/research/rffi/",
  "/research/keygen/keygen_main_page/" => "/research/keygen/",
  "/research/phy-auth/phy-auth-main-page/" => "/research/phy-auth/",
  "/research/wifi-sensing/wifi-sensing-main-page/" => "/research/wifi-sensing/",
  "/research/mmwave-radar/mmwave-radar-main-page/" => "/research/mmwave-radar/",
  "/resources/deep-learning/dl/" => "/resources/deep-learning/",
  "/demo-keygen-heartbeat-ppg/" => "/research-demo/demo-keygen-heartbeat-ppg/",
  "/demo-keygen-warp/" => "/research-demo/demo-keygen-warp/"
}

# Match root-relative links and absolute links to this site, without matching
# the same suffix within a current URL (for example /research-demo/...).
site_url = YAML.safe_load_file("_config.yml").fetch("url").chomp("/")
content_files = Dir.glob("{_pages,_posts,_includes,_layouts,_data,research,research-demo,resources,funding-and-awards}/**/*.{md,html,yml}")
content_files.each do |path|
  source = File.read(path)
  canonical_redirects.each do |legacy_url, canonical_url|
    retired_link = %r{(?<![\w/.-])(?:#{Regexp.escape(site_url)})?#{Regexp.escape(legacy_url)}(?=[\s\x22'\x29\x3e\x23?]|$)}
    errors << "#{path}: retired URL #{legacy_url}; use #{canonical_url}" if source.match?(retired_link)
  end
end

if errors.empty?
  puts "Content audit passed for #{research_pages.length} research pages."
else
  warn errors.join("\n")
  exit 1
end
