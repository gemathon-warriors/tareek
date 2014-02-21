require "tareek/version"
require 'active_support/version'

if ActiveSupport::VERSION::MAJOR > 2
  require 'active_support/core_ext/numeric'
end

module Tareek
  class Date
    class << self
      def get_middle_of_next_month_date year, month
        (parse_date + 45 * 24 * 60 * 60).to_date
      end

      def get_middle_of_past_month_date year, month
        (parse_date - 15 * 24 * 60 * 60).to_date
      end

      def parse_date
      	Time.parse("1-#{month}-#{year} 0:1 UTC")
      end
    end

  end
end
