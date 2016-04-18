colors = %w[red orange yellow green blue indigo violet]
p colors
p colors.grep(/o/) {|x| x.capitalize}

=begin

The full grep syntax
enumerable.grep(expression) {|item| ... }
thus operates in effect like this:
enumerable.select {|item| expression === item}.map {|item| ... }
=end