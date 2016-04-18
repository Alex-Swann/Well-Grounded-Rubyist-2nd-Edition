string = "My phone number is (123) 555-1234"
phone_re = /\((\d{3})\)\s+(\d{3})\-(\d{4})/

p  m = phone_re.match(string)
#=> #<MatchData "(123) 555-1234" 1:"123" 2:"555" 3:"1234">


phone_re2 = /\((?<first>\d{3})\)\s+(?<middle>\d{3})\-(?<last>\d{4})/
p  m2 = phone_re2.match(string)
#=> #<MatchData "(123) 555-1234" first:"123" middle:"555" last:"1234">

p m2[:first]
#=> "123"

p m2.pre_match

p m2.post_match
