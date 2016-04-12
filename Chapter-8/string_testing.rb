puts %q{You needn't escape apostrophes when using %q #{1+1}} 
#=> this is equivalent to using single quotes

puts %Q{You needn't escape apostrophes when using %q #{1+1}}
#=> this is equivalent to using double quotes

=begin

%q-A string-
%Q/Another string/
%[Yet another string]

these all work and as long as the opening and closing delimiters
match each other, any special character can be used to represent them
NOT alphanumerics however

%Q[I can put [] in here unescaped.]
%q(I have to escape \( if I use it alone in here.)
%Q(And the same goes for \).)

personally square brackets seem to work best if you want to avoid
escaping any characters
=end

text = <<EOM
This is the first line of text.
This is the second line.
Now we're done.
EOM
p text
#=> EOM can be replaced with any string but EOM (= end of message)
# is a common clear choice for obvious reasons
# <<EOM need its closing delimiter to be flush left
# <<-EOM doesn't
# <<-'EOM' is the single quote equivalent

=begin

The <<EOM (or equivalent) doesn’t have to be the last thing on its line. Wherever it
occurs, it serves as a placeholder for the upcoming here-doc. Here’s one that gets converted
to an integer and multiplied by 10:
a = <<EOM.to_i * 10
5
EOM
puts a Output: 50
Licensed to Alexander Swann <alex_swann@hotmail.co.uk>
224 CHAPTER 8 Strings, symbols, and other scalar objects
You can even use a here-doc in a literal object constructor. Here’s an example where a
string gets put into an array, creating the string as a here-doc:
array = [1,2,3, <<EOM, 4]
This is the here-doc!
It becomes array[3].
EOM
p array
The output is
[1, 2, 3, "This is the here-doc!\nIt becomes array[3].\n", 4]