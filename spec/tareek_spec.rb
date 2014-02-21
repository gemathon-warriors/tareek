require 'spec_helper'

describe "Humanize Dates :: " do

  it "should return middle date of next month of the specified year" do
    middle_of_next_month = Tareek::Dates.get_middle_of_next_month_date(2014,3)
    middle_of_next_month.to_s.should == "2014-04-15"
  end

  it "should return middle date of past month of specified year" do
    middle_of_past_month = Tareek::Dates.get_middle_of_past_month_date(2014,3)
    middle_of_past_month.to_s.should == "2014-02-14"
  end

  it "should return day of middle date of next month of the specified year" do
    day_middle_of_next_month = Tareek::Dates.day_middle_of_next_month_date(2014,3)
    day_middle_of_next_month.to_s.should == "Tuesday"
  end

  it "should return day of the middle date of past month of specified year" do
    day_middle_of_past_month = Tareek::Dates.day_middle_of_past_month_date(2014,3)
    day_middle_of_past_month.to_s.should == "Friday"
  end

  it "should provide date for next specified weekday" do
    pending "Dont know how to test this"
    day_middle_of_past_month = Tareek::Dates.date_of_next("Sunday")
  end

  it "should return humanized date without day" do
    humanized_date = Tareek::Dates.humanize_without_day('1/12/2014')
    humanized_date.should == "Dec 14"
  end

  it "should return humanized date with day" do
    humanized_date = Tareek::Dates.humanize_with_day('1/12/2014')
    humanized_date.should == "01-Dec-14"
  end

  it "should return time in the date" do
    humanized_date = Tareek::Dates.time_at_day('1/12/2014')
    humanized_date.should == "12:00 AM"
  end

  it "should return omniture format with time" do
    humanized_date = Tareek::Dates.omniture_format_with_time('1/12/2014')
    humanized_date.should == "12/01/2014 12:00:00 AM"
  end

end
