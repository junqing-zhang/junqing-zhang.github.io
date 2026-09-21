module Jekyll
  module PublicationFilters
    def strip_ieee_number(reference)
      reference.to_s.sub(/\[\d+\]\s*/, "")
    end

    def publication_pdf_path(filename)
      return nil if filename.nil? || filename.to_s.empty?

      site = @context.registers[:site]
      paths = site.instance_variable_get(:@publication_static_file_paths)

      unless paths
        paths = site.static_files.each_with_object({}) do |static_file, index|
          index[static_file.path] = true
        end

        site.instance_variable_set(
          :@publication_static_file_paths,
          paths
        )
      end

      candidate = "/papers/#{filename}"
      candidate if paths.key?(candidate)
    end
  end
end

Liquid::Template.register_filter(Jekyll::PublicationFilters)