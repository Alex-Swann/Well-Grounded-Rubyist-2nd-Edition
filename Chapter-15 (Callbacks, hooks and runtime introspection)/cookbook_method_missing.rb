# The main point of the following exercise is the fact that no
# error is thrown when using .select and << even though the
# Comparable module hasn't been included in the Cookbook
# class. And that a method_missing method has been defined in 
# class Cookbook overriding what's been set in BasicObject so 
# everything passed using these unknown methods is then passed onto
# the array.

class Cookbook
	attr_accessor :title, :author
	def initialize
		@recipes = []
	end
	def method_missing(m,*args,&block) # for method_missing, it's arguments are always m (method), *args (all arguments), and &block(any block called)
		@recipes.send(m,*args,&block) 
	end
end

class Recipe
	def chicken
		["chicken"]
	end
	def cake
		["sugar"]
	end
end

recipe_for_chicken = Recipe.new.chicken
recipe_for_cake = Recipe.new.cake

cb = Cookbook.new

cb << recipe_for_cake
cb << recipe_for_chicken
beef_dishes = cb.select{|recipe| recipe.include?"beef"}

# There are also Delegator and SimpleDelegator classes in Ruby that
# also do similar things to this which you may come across in Ruby.

#******************
# BasicObject method_missing

class Person
 	attr_accessor :name, :age
 	def initialize(name, age)
 		@name, @age = name, age
 	end
 	def method_missing(m, *args, &block)
 		if /set_(.*)/.match(m)
 			self.send("#{$1}=", *args)
 		else
 			super
 		end
 	end
end

# respond_to_missing aligns respond_to? method with method_missing
# to return true when called. It can also be used to control
# whether private methods are included.

def respond_to_missing?(m, include_private = false)
 /set_/.match(m) || super
end

person = Person.new("David", 54)
person.set_age(55)
p person.age
p person.respond_to?(:set_age) 

