
# method_added and singleton_method_added are used to callback when
# instance and singelton methods are added. However it's better for
# a singleton method callback to be added specifically to the object
# rather than a class.

class C
	def self.method_added(m)
		puts "Method #{m} was just defined."
	end
	def a_new_method
	end

	def self.singleton_method_added(m)
		puts "Method #{m} was just defined for singelton."
	end
	def self.new_class_method
		
	end
end

