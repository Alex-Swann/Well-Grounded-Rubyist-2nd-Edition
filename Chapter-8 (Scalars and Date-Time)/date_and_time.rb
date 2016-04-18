require 'date'
require 'time'

puts Date.today
puts Date.parse("2003/6/9")

puts Time.new
puts Time.mktime(1985,12,1,14,5,6)
#puts Time.strptime("10". "10")
puts Time.parse("10:15am on 25th december 2016")

dt = DateTime.now
puts dt.hour

puts dt.friday?
puts dt.tuesday?

t = Time.new
puts t
puts dt.leap?
puts t.dst?

puts t.strftime("%d-%B-%Y")

#sprintf is a useful too and similar to strftime 
def hours_mins m
	h = m / 60
	m -= h * 60
	sprintf("%d:%02d", h, m)
end
p hours_mins(6784)
#=> "113:04"

=begin

%Y Year (four digits)
%y Year (last two digits)
%b, %B Short month, full month
%m Month (number)
%d Day of month (left-padded with zeros)
%e Day of month (left-padded with blanks)
%a, %A Short day name, full day name
%H, %I Hour (24-hour clock), hour (12-hour clock)
%M Minute
%S Second
%c Equivalent to "%a %b %d %H:%M:%S %Y"
%x Equivalent to "%m/%d/%y"

In addition to the facilities provided by strftime, the Date and DateTime classes give
you a handful of precooked output formats for specialized cases like RFC 2822 (email)
compliance and the HTTP format specified in RFC 2616:
>> Date.today.rfc2822
=> "Sun, 3 Nov 2013 00:00:00 +0000"
>> DateTime.now.httpdate
=> "Sun, 03 Nov 2013 12:49:48 GMT"

DATE/TIME ARITHMETIC
Time objects let you add and subtract seconds from them, returning a new time object:
>> t = Time.now
=> 2013-11-03 04:50:49 -0800
>> t - 20
=> 2013-11-03 04:50:29 -0800
>> t + 20
=> 2013-11-03 04:51:09 -0800
Date and date/time objects interpret + and – as day-wise operations, and they allow
for month-wise conversions with << and >>:
>> dt = DateTime.now
=> #<DateTime: 2013-11-03T04:51:05-08:00 ... >
>> puts dt + 100
2014-02-11T04:51:05-08:00
>> puts dt >> 3
2014-02-03T04:51:05-08:00
>> puts dt << 10
2013-01-03T04:51:05-08:00
You can also move ahead one using the next (a.k.a. succ) method. A whole family of
next_unit and prev_unit methods lets you move back and forth by day(s), month(s),
or year(s):
>> d = Date.today
=> #<Date: 2013-11-03 ((2456600j,0s,0n),+0s,2299161j)>
>> puts d.next
2013-11-04
>> puts d.next_year
2014-11-03
>> puts d.next_month(3)
2014-02-03
>> puts d.prev_day(10)
2013-10-24

Furthermore, date and date/time objects allow you to iterate over a range of them,
using the upto and downto methods, each of which takes a time, date, or date/time
object. Here’s an upto example:

>> d = Date.today
=> #<Date: 2013-11-03 ((2456600j,0s,0n),+0s,2299161j)>
>> next_week = d + 7
=> #<Date: 2013-11-10 ((2456607j,0s,0n),+0s,2299161j)>
>> d.upto(next_week) {|date| puts "#{date} is a #{date.strftime("%A")}" }
2013-11-03 is a Sunday
2013-11-04 is a Monday
2013-11-05 is a Tuesday
2013-11-06 is a Wednesday
2013-11-07 is a Thursday
2013-11-08 is a Friday
2013-11-09 is a Saturday
2013-11-10 is a Sunday
=end
