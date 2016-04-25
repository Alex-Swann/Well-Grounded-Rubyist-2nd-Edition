# The caller method is used to traceback the following within an array 
# in string format, it:
# a) shows information of the file the method was called
# b) the line on which it's called
# c) and the method from which the current method was called.

def x
 	y
end
def y
 	z
end
def z
 	puts "Stacktrace: "
 	p caller
end
x
=begin
Stacktrace: 
["/Users/Alex_Swann/Documents/RUBY/GitHub_Repos/Well-Grounded-Rubyist-2nd-Edition/Chapter-15 (Callbacks, hooks and runtime introspection)/tracer.rb:5:in `y'", 
"/Users/Alex_Swann/Documents/RUBY/GitHub_Repos/Well-Grounded-Rubyist-2nd-Edition/Chapter-15 (Callbacks, hooks and runtime introspection)/tracer.rb:2:in `x'", 
"/Users/Alex_Swann/Documents/RUBY/GitHub_Repos/Well-Grounded-Rubyist-2nd-Edition/Chapter-15 (Callbacks, hooks and runtime introspection)/tracer.rb:11:in `<main>'"]
=end

#************
# The CallerTools::Call Class & CallerTools::Stack Class in callertest.rb
=begin
module CallerTools
	class Call
 		CALL_RE = /(.*):(\d+):in `(.*)'/
 		attr_reader :program, :line, :meth
 		def initialize(string)
 			@program, @line, @meth = CALL_RE.match(string).captures
 		end
 		def to_s
 			"%30s%5s%15s" % [program, line, meth]
 		end
 	end	
 	class Stack
 		def initialize
 			stack = caller
 			stack.shift
 			@backtrace = stack.map do |call|
 				Call.new(call)
 			end
 		end
 		def report
 			@backtrace.map do |call|
 				call.to_s
 			end
 		end
 		def find(&block)
 			@backtrace.find(&block)
 		end
 	end
 end
=end

require_relative 'callertest'
def x
 	y
end
def y
 	z
end
def z
 	stack = CallerTools::Stack.new
 	puts stack.report
end
x





