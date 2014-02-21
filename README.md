#[Tareek](http://documentup.com/gemathon-warriors/tareek) 

[![Gem Version](https://badge.fury.io/rb/tareek.png)](http://badge.fury.io/rb/tareek)
[![Build Status](https://travis-ci.org/gemathon-warriors/tareek.png?branch=master)](https://travis-ci.org/gemathon-warriors/tareek)
[![Code Climate](https://codeclimate.com/github/gemathon-warriors/tareek.png)](https://codeclimate.com/github/gemathon-warriors/tareek)
[![Dependency Status](https://gemnasium.com/gemathon-warriors/tareek.png)](https://gemnasium.com/gemathon-warriors/tareek)

It gives you dates like, middle of the month, middle of next month etc.

## Installation

Add this line to your application's Gemfile:

    gem 'tareek'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tareek

## Usage

### Returns middle date of next month of the specified year
	Tareek::Dates.get_middle_of_next_month_date(2014,3) #=> "2014-04-15"
  

### Returns middle date of past month of specified year
	Tareek::Dates.get_middle_of_past_month_date(2014,3) #=> "2014-02-14"
  

### Returns day of middle date of next month of the specified year
	Tareek::Dates.day_middle_of_next_month_date(2014,3) #=> "Tuesday"
  

### Returns day of the middle date of past month of specified year
	Tareek::Dates.day_middle_of_past_month_date(2014,3) #=> "Friday"
  

### Returns date for next specified weekday
	Tareek::Dates.date_of_next("Sunday") ##=>> 'Sunday'
  

### Returns humanized date without day
	Tareek::Dates.humanize_without_day('1/12/2014') #=> "Dec 14"
  

### Returns humanized date with day
	Tareek::Dates.humanize_with_day('1/12/2014') #=> "01-Dec-14"
  

### Returns time in the date
	Tareek::Dates.time_at_day('1/12/2014') #=> "12:00 AM"
  

### Returns omniture format with time
	Tareek::Dates.omniture_format_with_time('1/12/2014') #=> "12/01/2014 12:00:00 AM"
  

## Contributing

1. Fork it ( http://github.com/<my-github-username>/tareek/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
