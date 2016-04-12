array1 = [['a','b','c'],[1,2,3],['x','y','z']]
array2 = [[1,2,1],[2,2,2],['a','a','a']]
array3 = [['d','d','d'], {'a'=>1,'b'=>2}]

keys = [:key1, :key2, :key3]
usable_arrays = [array1, array2, array3]

#p Hash[[1,2,3].zip([[4,5,6],[7,8,9]])] 
#p Hash[keys.zip(usable_arrays)]


class Dog
	attr_reader :age, :dog_years
	def dog_years=(years)
		@dog_years = years
	end
	def age=(years)
		@age = years
		self.dog_years = years * 7
	end
	private :dog_years=
end

rover = Dog.new
rover.age = 10
puts "Rover is #{rover.dog_years} in dog years."