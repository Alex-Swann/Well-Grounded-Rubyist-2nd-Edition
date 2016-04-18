e = Enumerator.new do |y|
	(1..5).each {|x| y << x}
end

p e.to_a

#an enumerator is itself an object unlike an iterator which is
#itself a method.

#a code block can be called to an Enumerator object yielding numbers
#to it which can then be called with a method.

names = %w{David Black Yukihiro Matsumoto}
e = names.enum_for(:select) #enum_for usually defaults to its :each method
p e.each{|n| n.include?('a')}
#by using enum_for to redefine what you'd like your each method to do
#to a particular object and then assigning this to a variable,
#your each method for that variable has thwn been altered to
#react like the method that you have assigned it when calling
#enum_for. So in this case .each acts like .select with the 
#variable e but NOT for the array names.


