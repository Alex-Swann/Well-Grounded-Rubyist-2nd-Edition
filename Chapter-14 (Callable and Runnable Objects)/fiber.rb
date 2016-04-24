# Fibers are similar to threads but take their own code blocks and
# and returns control back to the calling context with the methos
# yield.

f = Fiber.new do
	puts "Hi."
	Fiber.yield
	puts "Nice day."
	Fiber.yield
	puts "Bye!"
end
f.resume
puts "Back to the fiber:"
f.resume
puts "One last message from the fiber:"
f.resume
puts "That's all!"

=begin
#=>
Hi.
Back to the fiber:
Nice day.
One last message from the fiber:
Bye!
That's all!
=end