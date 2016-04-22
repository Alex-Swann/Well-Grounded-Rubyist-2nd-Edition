# love this simple function, so neat.

p %w{ david black }.map(&:capitalize)

# lets implement a Symbol#to_proc

# this is the style as to how to implement a to_proc method in 
# the Symbol class
class Symbol
 	def to_proc
 		Proc.new {|obj| obj.send(self) }
 	end
end

# for example
# this loads in using IRB
class Symbol
 	def to_proc
 		puts "In the new Symbol#to_proc!"
 		Proc.new {|obj| obj.send(self) }
 	end
end

p %w{ david black }.map(&:capitalize)










