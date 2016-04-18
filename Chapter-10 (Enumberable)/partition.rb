class Person
	attr_accessor :age
	def initialize(options)
		self.age = options[:age]
	end
	def teenager?
		(13..19) === age
	end
end

people = 10.step(25,3).map{|x| Person.new(:age => x)}

p teens = people.partition {|x| x.teenager?}