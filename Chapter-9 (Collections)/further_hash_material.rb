#this is an extension of added hashed to hashed using a hash as 
#a final methos argument

class City < Hash
	def add_to_city_database(c,*d)
		self[c] = *d
	end
end

cities = City.new
cities.add_to_city_database("New York City",
 state: "New York",
 population: 7000000,
 nickname: "Big Apple")

p cities

def m(a: 1, b: 2, **c)
	p a,b,c
end

p m(x: 8, y: 3)

=begin

A little exert which I think probably displays the limit of complexity of an
argument list for a method.

def m(x, y, *z, a: 1, b:, **c, &block)
	p x,y,z,a,b,c
end

>> m(1,2,3,4,5,b:10,p:20,q:30)

=> [1, 2, [3, 4, 5], 1, 10, {:p=>20, :q=>30}]

Here the method m
■ Takes two required positional arguments (x and y, bound to 1 and 2)
■ Has a “sponge” parameter (z) that takes care of extra arguments following the
positional ones (3, 4, 5)
■ Has one optional and one required keyword argument (a and b, respectively,
bound to 1 and 10)
■ Has a keyword “sponge” (c) to absorb unknown named arguments (the p and
q hash)
■ Has a variable for binding to the code block, if any (block)
You’ll rarely see method signatures of this complexity, so if you can keep track of the
elements in this one, you’re probably all set! ***THANKS CHRIST!!!
 We’ll look next at ranges—which aren’t exactly collection objects, arguably, but
which turn out to have a lot in common with collection objects. 
=end



