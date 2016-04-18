p "The alphabet starts with abc" =~ /abc/
#=> 25
p /abc/.match("The alphabet starts with abc.")
#=> #<MatchData "abc">

str = "Hello my name is Wolfy! And I like 10 special characters including '&^* & ]"

p /[a-zA-Z0-9]/.match(str)
#=> #<MatchData "H">

p /[0-9]/.match(str)
#=> #<MatchData "1">

p /[^H]/.match(str)
#=> #<MatchData "e">

#the following equates to the same thing (i.e. find first digit)
p /\d/.match(str)
#=> #<MatchData "1">

#matches any character
p /\w/.match(str)
#=> #<MatchData "H">

#matches whitespace
p /\s/.match(str)
#=> #<MatchData " ">

# /\D/, /\W/, /\S/ is the negated version of the three examples above

str_name = "Peel,Emma,Mrs.,talented amateur"

p /([A-Za-z]+),[A-Za-z]+,(Mrs?\.)/.match(str_name)
#=> #<MatchData "Peel,Emma,Mrs." 1:"Peel" 2:"Mrs.">

p $1
#=> "Peel"
p $2
#=> "Mrs."

# in literal English this means the following
=begin

1). '/' start regex
2). '([A-Za-z]+)' keep this substring '()' and match all '+' letters
	in the ranges '[A-Za-z]'
3). ',[A-Z-a-z]+,' there's a comma then another substring with characters
	in the ranges [A-Za-z]+ that we want to ignore, then another comma
4). '(Mrs?\.)' there's '()' so we want to keep this too, 'Mr' them 's?' where ? looks at
	the previous character 's' and dictates that the string either needs zero of one
	of this character to occur, '\.' which is escaped by '\' so '.' is included
5). '/' then lastly end of regex

The match method has constructed a MatchData instance which has set
global variables now including the substrings we want to keep.

=end










