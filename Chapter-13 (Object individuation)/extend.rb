# using extend on a singleton object

module Secretive
	def name
		"[not available]"
	end
end

class Person
	attr_accessor :name
end

david = Person.new
david.name = "David"
matz = Person.new
matz.name = "Matz"
ruby = Person.new
ruby.name = "Ruby"
david.extend(Secretive)
ruby.extend(Secretive)
puts "We've got one person named #{matz.name}, " +
 "one named #{david.name}, " +
 "and one named #{ruby.name}."

 # using extend on a Class
# As you’ve probably noticed, Extend a module inside a class will add 
# the instance methods defined in the module to the extended class.

# The Include will add the instance methods defined in the module to the 
# instances of the class including the module.

# this module helps bypass gsub nil without affectin Ruby's core functionality
module GsubBangModifier
	def gsub!(*args, &block)
		super || self
	end
end
str = "Hello there!"
str.extend(GsubBangModifier)
str.gsub!(/zzz/,"abc").reverse!
puts str 
