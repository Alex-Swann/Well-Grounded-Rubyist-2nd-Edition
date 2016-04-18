def fussy_method(x)
 raise ArgumentError, "I need a number under 10" unless x < 10
end

begin
 fussy_method(20)
rescue ArgumentError => e
 puts "That was not an acceptable number!"
 puts "Here's the backtrace for this exception:"
 puts e.backtrace
 puts "And here's the exception object's message:"
 puts e.message
end

#a convoluted but concise example as to how to rescue an error rather than
#that set out by Exception class and using recursion
def sum n
	begin
	n.reduce(:+)
	rescue 
		n.map!{|x| x.is_a?(Array) ? x.reduce(:+) : x }
		sum n
	end
	p n.reduce(:+)
end

sum([1,2,3,[4,5]])

def line_from_file(filename, substring)
 fh = File.open(filename)
 	begin
 		line = fh.gets
 		raise ArgumentError unless line.include?(substring)
 	rescue ArgumentError
 		puts "Invalid line!"
 		raise
 	ensure
 		fh.close
 	end
 return line
end