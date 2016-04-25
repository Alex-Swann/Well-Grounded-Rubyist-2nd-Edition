# This uses a private method that is called using the name(=) setter
# which normalises a name to remove special characters from it.

class Person
 	attr_reader :name
 	def name=(name)
 		@name = name
 		normalize_name
 	end
 	private
 	def normalize_name
 		name.gsub!(/[^-a-z'.\s]/i, "")
 	end
end
david = Person.new
david.name = "123David!! Bl%a9ck"
raise "Problem" unless david.name == "David Black"
puts david.name
puts "Name has been normalized."
p david.private_methods.sort.grep(/normal/) 

# protected_methods and private_methods method list them from what has
# either been defined by the programmer or which has been inherited by
# the Kernel object. Unless you're looking at an instance of 
# BasicObject which won't return anything.

