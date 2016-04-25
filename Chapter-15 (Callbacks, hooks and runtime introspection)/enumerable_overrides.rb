# you can also find out which intance methods are overridden between modules/classes
# using the &
p Range.instance_methods(false) & Enumerable.instance_methods(false)
#=> [:first, :min, :max, :member?, :include?]

# This populates a list of instance methods from Enumerable overriden
# by its descendents.

overrides = {}
enum_classes = ObjectSpace.each_object(Class).select do |c|
 	c.ancestors.include?(Enumerable)
end
enum_classes.each do |c|
 	overrides[c] = c.instance_methods(false) &
 					Enumerable.instance_methods(false)
end
overrides.delete_if {|c, methods| methods.empty? }
overrides.each do |c,methods|
 	puts "Class #{c} overrides: #{methods.join(", ")}"
end

