string = "My phone number is (123) 555-1234"
phone_re = /\((\d{3})\)\s+(\d{3})\-(\d{4})/

p  m = phone_re.match(string)
#=> #<MatchData "(123) 555-1234" 1:"123" 2:"555" 3:"1234">

p m[0]
#=> "(123) 555-1234"
p m[1]
#=> "123"
p $2
#=> "555"
p m[3]
#=> "1234"
p m.captures
#=> ["123", "555", "1234"]

#parentheses are important as they parse from the left and organise
#the MatchData object like so
p /((a)((b)c))/.match("abc")
#=> #<MatchData "abc" 1:"abc" 2:"a" 3:"bc" 4:"b">



