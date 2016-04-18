str = "123 456. 789"
m = /\d+(?=\.)/.match(str)
p m
#=> #<MatchData "456">

=begin

The lookahead assertions have lookbehind equivalents. Here’s a regexp that matches
the string BLACK only when it’s preceded by “David ”:
re = /(?<=David )BLACK/
Conversely, here’s one that matches it only when it isn’t preceded by “David ”:
re = /(?<!David )BLACK/

(?:) does however consume a character into a string but doesn't capture them.

-end