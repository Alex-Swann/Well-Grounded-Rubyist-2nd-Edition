
def talk
 puts "Hello"
end
puts "Trying 'talk' with no receiver..."
talk
puts "Trying 'talk' with an explicit receiver..."
obj = Object.new
obj.talk 

$ ruby -e 'p Kernel.private_instance_methods.sort'
