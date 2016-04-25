# included and prepended methods are used to indicate when a class or
# module has been mixed into another class or module.

module M
	def self.included(c)
		puts "I have just been mixed into #{c}."
	end
end
class C
	include M
end

# you can also utilise this setup to mixin class methods
# as well as instance methods too

module M
	def self.included(cl)
		def cl.a_class_method
		puts "Now the class has a new class method."
		end
	end
	def an_inst_method
		puts "This module supplies this instance method."
	end
end

class C
	include M
end
c = C.new
c.an_inst_method
C.a_class_method

