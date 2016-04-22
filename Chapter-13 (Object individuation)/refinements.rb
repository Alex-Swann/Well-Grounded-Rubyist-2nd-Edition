module Shout
	refine String do
		def shout
			self.upcase + "!!!"
		end
	end
end

class Person
	attr_accessor :name

	using Shout
	def announce
		puts "Announcing #{name.shout}"
	end
end

david = Person.new
david.name = "David"
david.announce

# refinements are one of the safer ways of making adjustments to 
# objects in ruby. They carry on throughout the class,  module or script
# from the moment they are called until the end of the scope they 
# reside in. It uses the keyword 'refine' followed by a class name
# and a code block to determine a new method.
# 	This is then switched on using the keyword 'using' further down
# the script.