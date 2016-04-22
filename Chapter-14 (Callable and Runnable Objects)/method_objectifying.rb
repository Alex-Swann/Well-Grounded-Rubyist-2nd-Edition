class C
 	def talk
 	puts "Method-grabbing test! self is #{self}."
 	end
end
c = C.new
meth = c.method(:talk)
meth.call

class D < C
end
d = D.new
unbound = meth.unbind
unbound.bind(d).call


unbound = C.instance_method(:talk) #equivalent to a 'method' & an 'unbind' call

class A
 	def a_method
 		puts "Definition in class A"
 	end
end
class B < A
 	def a_method
 		puts "Definition in class B (subclass of A)"
 	end
end
class E < B
end

e = E.new
unbound = A.instance_method(:a_method)
unbound.bind(e).call

# alternative way to call objects
mult = lambda {|x,y| x * y}
p twelve = mult.call(3,4) # original call seen 
p twelve = mult[3,4] # square bracket notation
p twelve = mult.(3,4) # probably less common parenthese that need dot notation








