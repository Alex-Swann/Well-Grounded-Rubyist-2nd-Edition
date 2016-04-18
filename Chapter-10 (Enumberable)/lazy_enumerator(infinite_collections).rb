p (1..Float::INFINITY).lazy.select{|n| n % 3 == 0}.first(10)

#I didn't realise you could quantify infinity in a range
#plus the lazy method for enumerators would be very handy for this
#kind of problem where you don't know what first numbers divisible
#by three is if lets say 10 was replaced by a variable 'x'
#that might only be defined by user input.

#you could also do the following

enum = (1..Float::INFINITY).lazy.select{|n| n % 3 == 0}
p enum

p enum.take(5)
p enum.take(5).force #force is used to force a result rather than being returned another enumerator.
