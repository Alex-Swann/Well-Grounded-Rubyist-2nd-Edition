

p BasicObject.instance_methods(false).sort

# XML Builder gem using Ruby script to create XML tags
require 'builder'
xml = Builder::XmlMarkup.new(:target => STDOUT, :indent => 2)
xml.instruct!
xml.friends do
	xml.friend(:source => "college") do
		xml.name("Joe Smith")
		xml.address do
			xml.street("123 Main Street")
			xml.city("Anywhere, USA 00000")
		end
	end
end


# own defined BAsicObject subclass

class Lister < BasicObject
	attr_reader :list
	def initialize
		@list = ""
		@level = 0
	end
	def indent(string)
		" " * @level + string.to_s
	end
	def method_missing(m, &block)
		@list << indent(m) + ":"
		@list << "\n"
		@level += 2
		@list << indent(yield(self)) if block
		@level -= 2
		@list << "\n"
		return ""
	end
end