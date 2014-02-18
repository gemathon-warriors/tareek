require 'time'
class CoolDates
  def get_middle_of_next_month_date year, month
    (Time.parse("1-#{month}-#{year} 0:1 UTC") + 45 * 24 * 60 * 60).to_date
  end

  def get_middle_of_past_month_date year, month
    (Time.parse("1-#{month}-#{year} 0:1 UTC") - 15 * 24 * 60 * 60).to_date
  end

  def self.get_middle_of_next_month_date year, month
    (Time.parse("1-#{month}-#{year} 0:1 UTC") + 45 * 24 * 60 * 60).to_date
  end

  def self.get_middle_of_past_month_date year, month
    (Time.parse("1-#{month}-#{year} 0:1 UTC") - 15 * 24 * 60 * 60).to_date
  end
end