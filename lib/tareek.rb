require "tareek/version"
require 'active_support/version'
require 'date'

if ActiveSupport::VERSION::MAJOR > 2
  require 'active_support/core_ext/numeric'
end

module Tareek
  class Dates
    class << self

      def get_middle_of_next_month_date(year, month)
        (parse_date(month,year) + 45 * 24 * 60 * 60).to_date
      end

      def get_middle_of_past_month_date(year, month)
        (parse_date(month,year) - 15 * 24 * 60 * 60).to_date
      end

      def day_middle_of_next_month_date(year, month)
        day_on(get_middle_of_next_month_date(year, month))
      end

      def day_middle_of_past_month_date(year, month)
        day_on(get_middle_of_past_month_date(year, month))
      end

      def parse_date(month,year)
        Time.parse("1-#{month}-#{year} 0:1 UTC")
      end

      def date_of_next(day)
        date  = convert_to_date(day)
        delta = date > Date.today ? 0 : 7
        date + delta
      end

      def day_on(date)
        convert_to_date(date).strftime("%A")
      end

      def humanize_without_day(date)
        convert_to_date(date).strftime('%b %y')
      end

      def humanize_with_day(date)
        convert_to_date(date).strftime('%d-%b-%y')
      end

      def humanize_with_day_and_full_year(date)
        convert_to_date(date).strftime('%d %b %Y')
      end

      def time_at_day(date)
        convert_to_date(date).strftime('%I:%M %p')
      end

      def omniture_format_with_time(date)
        convert_to_date(date).strftime('%m/%d/%Y %I:%M:%S %p')
      end

      def convert_to_date(date)
        (date.kind_of? Date) ? date : Date.parse(date)
      end

    end

  end
end
