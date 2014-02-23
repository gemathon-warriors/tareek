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

  it "should return today date in dd-mm-yyyy format" do
    today_date = Tareek::Dates.today_date_in_dd_mm_yy_format
    Time.now.strftime('%d-%m-%Y').should == today_date
  end

  it "should return today date in mm-dd-yyyy format" do
    today_date = Tareek::Dates.today_date_in_mm_dd_yy_format
    Time.now.strftime('%m-%d-%Y').should == today_date
  end 

  it "should return true that '22-02-2014' is a weekend" do
    weekend = Tareek::Dates.weekend?("22-02-2014")
    weekend.should == true
  end

  it "should return true that '24-02-2014' is a weekday" do
    weekday = Tareek::Dates.weekday?("24-02-2014")
    weekday.should == true
  end

  it "should return 29 days for Feb 2012" do
    total_days = Tareek::Dates.days_in_a_month_of("Feb", 2012)
    total_days.should == 29
  end

  it "should return 28 days for Feb 2014" do
    total_days = Tareek::Dates.days_in_a_month_of("Feb", 2014)
    total_days.should == 28
  end

  it "should return fals that Feb 2012 is of 28 days" do
    total_days = Tareek::Dates.feb_month_of_28_days_for?(2012)
    total_days.should == false
  end

  it "should return true that Feb 2014 is of 28 days" do
    total_days = Tareek::Dates.feb_month_of_28_days_for?(2014)
    total_days.should == true
  end

end
