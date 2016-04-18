

#Here’s a simple example. The conditional expression (?(1)b|c) matches b if capture
#number 1 is matched; otherwise it matches c:
re = /(a)?(?(1)b|c)/
#=> /(a)?(?(1)b|c)/
re.match("ab")
#=> #<MatchData "ab" 1:"a">
re.match("b")
#=> nil
re.match("c")
#=> #<MatchData "c" 1:nil>

=begin
The regular expression re matches the string "ab" B, with "a" as the first parenthetical
capture and the conditional subexpression matching "a". However, re doesn’t
match the string "b" c. Because there’s no first parenthetical capture, the conditional
subexpression tries to match "c", and fails d. That’s also why re does match the
string "c": the condition (?(1)…) isn’t met, so the expression tries to match the “else”
part of itself, which is the subexpression /c/.
 You can also write conditional regular expressions using named captures. The preceding
example would look like this:
=end
/(?<first>a)?(?(<first>)b|c)/

=begin 
For Modifiers:

//i  means case-insensitive
//m means ignore any new lines (\n) in a string
//x means to ignore whitespace in a regex

=end