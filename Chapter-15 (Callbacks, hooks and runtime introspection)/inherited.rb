# inherited is called when a sublass inherits a class with that method

class C
	def self.inherited(subclass)
		puts "#{self} just got subclassed by #{subclass}."
	end
	class << self
 		def self.inherited # LIMITS: Although singleton class is herited you can't trigger a callback with inherited
 			puts "Singleton class of C just got inherited!"
 			puts "But you'll never see this message."
 		end
 	end
end
class D < C
	class << self
 		puts "D's singleton class now exists, but no callback!"
 	end
end

class E < D
end

