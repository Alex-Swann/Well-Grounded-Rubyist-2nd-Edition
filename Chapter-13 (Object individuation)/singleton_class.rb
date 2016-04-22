str = "I am a string"
class << str
 def twice
 self + " " + self
 end
end
puts str.twice

# CONSTANTS
# the one difference between the 'def object.method' method
# and 'class << object; def method' method is class << object
# resolves it's own constants

class Person
	attr_reader :name
 	@@names = []

 	def name=(name)
 		@name = name
 		@@names << @name
 	end

 	def self.names
 		@@names
 	end
 	p ancestors
end


david = Person.new
david.name = "David"
mike = Person.new
mike.name = "Mike"
matz = Person.new
matz.name = "Matz"
ruby = Person.new
ruby.name = "Ruby"
p Person.names

module Secretive
	def name
		"[not available]"
	end
end

class << ruby
	include Secretive
end

p ruby.name




