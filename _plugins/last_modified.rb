# Returns the date of the most recent Git commit that changed a page.
#
# The date is displayed only when a page opts in with:
#   show_last_updated: true
#
# A page can override the Git date with:
#   last_updated: 2026-09-21

require 'open3'

module Jekyll
  module LastModifiedFilter
    def git_last_modified(path)
      return nil if path.nil? || path.to_s.empty?

      site = @context.registers[:site]
      cache = site.instance_variable_get(:@git_last_modified_dates) || {}
      key = path.to_s
      return cache[key] if cache.key?(key)

      output, status = Open3.capture2(
        'git', '-C', site.source, 'log', '-1', '--format=%cs', '--', key
      )
      date = status.success? ? output.strip : ''
      cache[key] = date.empty? ? nil : date
      site.instance_variable_set(:@git_last_modified_dates, cache)
      cache[key]
    rescue StandardError
      nil
    end
  end
end

Liquid::Template.register_filter(Jekyll::LastModifiedFilter)
