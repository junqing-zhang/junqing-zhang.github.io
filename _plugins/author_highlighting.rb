require 'jekyll/scholar'

module Jekyll
  module AuthorHighlighting
    # Decorate an individual name while its full identity is still available.
    # Keep this scoped to Scholar's renderer instances and bibliography output;
    # never search the finished reference or change the underlying BibTeX data.
    module Renderer
      attr_accessor :highlight_given_names, :highlight_family_name

      def render_individual_name(name, node, position = 1)
        rendered = super
        return rendered unless state.node&.nodename == 'bibliography' && !sort_mode?
        return rendered unless name.personal?
        return rendered unless name.family.to_s == highlight_family_name
        return rendered unless highlight_given_names.include?(name.given.to_s)

        "<b>#{rendered}</b>"
      end
    end

    module ScholarRenderer
      def csl_renderer(force = false)
        super.tap do |renderer|
          renderer.extend(Renderer) unless renderer.is_a?(Renderer)
          renderer.highlight_given_names = Array(config['first_name'])
          renderer.highlight_family_name = config['last_name'].to_s
        end
      end
    end
  end
end

Jekyll::Scholar::Utilities.prepend(Jekyll::AuthorHighlighting::ScholarRenderer)
