str = %w{hey how are you you silly goose}
p str
p str.drop(1)
p str.take(2)


p str.drop_while{|x| /h/.match(x)}

p str.take_while{|y| y.include?("h")}