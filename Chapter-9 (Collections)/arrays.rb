n = 0

p Array.new(3) { n += 1; n * 10 }

#Array.new(3,"abc") means all three objects "abc" are the same object
#in order to stop this from happening use a block instead of using 
#parentheses

p %W[ David\ Black is a Rubyist ]
p %I[ David\ Black is a Rubyist ]

a = ["red", "blue", "yellow", "green", "purple"]
p a[1,2]
a[1,2] = "sossle", "zizzle"
p a[1,2]

p a.slice(1, 2)
p a
p a.slice!(1, 2)
p a
p a.values_at(0)

#.push can take more than one argument than <<

a = [1,2,3]
b = [4,5,6]

p a.push(b)
p a
p b

a = [1,2,3]
b = [4,5,6]
p a.concat(b)
p a
p b

a = [1,2,3]
p a.replace([4,5,6])
p a

p a * '-'
=begin
The original contents of a are gone, replaced B by the contents of the argument
array [4,5,6]. Remember that a replace operation is different from reassignment. If
you do this

a = [1,2,3]
a = [4,5,6]

the second assignment causes the variable a to refer to a completely different array object
than the first. That’s not the same as replacing the elements of the same array object. This
starts to matter, in particular, when you have another variable that refers to the original
array.
=end

