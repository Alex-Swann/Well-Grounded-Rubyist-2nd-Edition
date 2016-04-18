str = "aaabbbbbccccc8888''''eeeea"
str2 = "hey how are you doing"

p str2.split(' '){|x| x.upcase}

p print str.chars.chunk{ |x| x }.map(& :first) #first character of each grouping in order

p str.chars.chunk{ |x| x }.map(& :last) #separated grouped characters