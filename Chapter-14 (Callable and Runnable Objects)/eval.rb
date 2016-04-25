p eval("2*4")

print "Method name: "
m = "putting_method"
p eval("def #{m}; puts 'Hi'; end")
eval(m)


# the binding method grabs the latest variable bound in whatever
# scope is resides in and uses that in the contet of what eval is
# referring to, if that object has been used as its second argument.
def use_binding(b)
	eval("puts str", b)
end 
str = "I'm a string in top-level binding!"
use_binding(binding)

# you can use $SAFE on a scale of 1-4 to make eval safer but
# it has the problem of security and so isn't recommended for
# usage.

# instance_eval method
p self
a = []
a.instance_eval { p self }

# can break into classes and find instance variables.
# for example:
class C
	def initialize
		@x = 1
	end
end

c = C.new
c.instance_eval{puts @x}

# another instance_eval method
# this initializes instance_eval with a code block
# this acts as a getter/setter method.
# notice in the block you set the instance variable name
# and then the value. 

class Person
	def initialize(&block)
		instance_eval(&block)
	end
	def name(name=nil)
		@name ||= name
 	end
 	def age(age=nil)
 		@age ||= age
	end
end

david = Person.new do
 	name "David"
 	age 55
end
p david.name


# there's also instance_exec which is similar to instance_eval but can take arguments.
string = "A sample string"
p string.instance_exec("s") {|x| self.split(x)}
#=> ["A ", "ample ", "tring"]

# CLASS_EVAL (or MODULE_EVAL)
c = Class.new
c.class_eval do
	def some_method
		puts "Created in class_eval"
	end
end

c_instance = c.new
c_instance.some_method

# class_eval allows you do essentially do what creating a class does
# however it can also allow you to call variables that lie outside the
# scope of the class.

var = "some variable"
C.class_eval { puts var }
#=> "some variable" # see it works. Whereas using the standard
# way of defining a class would raise an error.
# if setting an top-level scope variable within a class instance
# method then the method 'define_method' would need to be used.
var = "Super!!!"
C.class_eval { define_method("talk") { puts var } }
p C.new.talk



















