=begin
	RuntimeError 
		The default exception raised by the raise method.
			Raise

	NoMethodError 
		An object is sent a message it can’t resolve to a method name; 
		the default method_missing raises this exception.
			a = Object.new
			a.some_unknown_method_name

	NameError 
	The interpreter hits an identifier it can’t resolve as a 
	variable or method name.
		a = some_random_identifier

	IOError 
		Caused by reading a closed stream, writing to a read-only stream, 
		and similar operations.
			STDIN.puts("Don't write to STDIN!")

	Errno::error 
		A family of errors relates to file I/O. 
			File.open(-12)

	TypeError 
		A method receives an argument it can’t handle.
			a = 3 + "can't add a string to a number!"

	ArgumentError 
	Caused by using the wrong number of arguments.
		def m(x); end; m(1,2,3,4,5)
=end

print "Enter a number: "
n = gets.to_i
begin
 result = 100 / n
rescue
 puts "Your number didn't work. Was it zero???"
 exit
end
puts "100/#{n} is #{result}."

# can use subclasses of Exception class with 'rescue' (i.e. rescue ZeroDivisionError)

