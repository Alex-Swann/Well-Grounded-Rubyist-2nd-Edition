=begin

\s* means one or more consecutive whitespace characters
\d* same with digits
\w* and alphanumeric characters 

so to recap

\s this means one instance of

\s? this means zero or one instance of

\s+ means one or more instances of

=end

# '*' and '+' are GREEDY

string = "abc!def!ghi!"
match = /.+!/.match(string)
puts match[0] 
#=> "abc!def!ghi!""

match = /.+?!/.match(string)
puts match[0] 
#=> "abc!"

#a question mark AFTER a * or + means stop once condition is satisfied w
#parsing all the way to the end of the string

#ranges can be specified too
/\d{2,10}/ #at least two up to ten


#ESCAPING is useful too

str = "a.c"
#=> "a.c"
re = /#{Regexp.escape(str)}/
#=> /a\.c/
re.match("a.c")
#=> #<MatchData "a.c">
re.match("abc")
#=> nil

array = %w{ sup win 2 three h to for 9}
p array

str = " alex mandy heaven true why innit selfish lotto "
p Hash[*str.split]

#This uses captures in a replacement string

 "aDvid".sub(/([a-z])([A-Z])/, '\2\1')
# '\2\1' takes the first and second capture and swaps them

 "double every word".gsub(/\b(\w+)/, '\1 \1')
 # '\1 \1' here uses the first and only captures and prints it twice with a space inbetween

#grep can only take strings but can be called with a block that acts similiar
#to the select/map method and finds all matches to the regex.
["USA", "UK", "France", "Germany"].grep(/[a-z]/) {|c| c.upcase }
#=> ["FRANCE", "GERMANY"]
 