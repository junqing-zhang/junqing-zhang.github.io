# frozen_string_literal: true

module AnnouncementFilters
  def london_date(time)
    # Scope the timezone change to this conversion so other dates keep the site's timezone.
    previous_timezone = ENV["TZ"]
    ENV["TZ"] = "Europe/London"
    time.getlocal.strftime("%Y-%m-%d")
  ensure
    ENV["TZ"] = previous_timezone
  end
end

Liquid::Template.register_filter(AnnouncementFilters)
