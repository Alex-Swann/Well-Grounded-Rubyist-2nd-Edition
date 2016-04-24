# an example of how thread-local globals don't clash with global
# variables like $1

# HOWEVER they do permanently affect all other varibles that lie within
# the scrope that the thread was created.

var = 1

/(abc)/.match("abc")
t = Thread.new do
 	/(def)/.match("def")
 	puts "$1 in thread: #{$1}"
 	var = 2
end.join
puts "$1 outside thread: #{$1}" 
puts var

# Assigning thread keys

t = Thread.new do
	Thread.current[:message] = "Hello"
end
t.join
p t.keys
puts t[:message]









