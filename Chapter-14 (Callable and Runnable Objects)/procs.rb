pr = Proc.new { puts "Inside a Proc's block" }
pr2 = proc { puts "Inside a Proc's block" }
pr.call
pr2.call

#Proc.new and the method proc pretty much do the same thing.

def call_a_proc(&block)
	block.call
end
call_a_proc { puts "I'm the block...or Proc...or something." }

p = Proc.new {|x| puts x.upcase }
%w{ David Black }.each(&p)


# using to_proc as a conversion hook within a class
class Person
	attr_accessor :name
	def self.to_proc
 		Proc.new {|person| person.name }
	end
end
d = Person.new
d.name = "David"
m = Person.new
m.name = "Matz"
puts [d,m].map(&Person) 

# Procs can act like closures too meaning the variable is preserved for 
# each Proc instantiated. It preserves the variable wherever you call it.
def make_counter
 	n = 0
 	return Proc.new { n += 1 }
end
c = make_counter
puts c.call
puts c.call
d = make_counter
puts d.call
puts c.call

pr = Proc.new {|x| p x}
p pr.call(10,11,12)