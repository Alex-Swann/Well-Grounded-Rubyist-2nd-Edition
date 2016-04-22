require 'pathname'
p path = Pathname.new(File.expand_path(__FILE__))
#=> #<Pathname:/Users/Alex_Swann/Documents/RUBY/GitHub_Repos/Well-Grounded-Rubyist-2nd-Edition/Chapter-12 (I:O - File systems)/Pathname_class.rb>

p path.basename
#=> #<Pathname:Pathname_class.rb>
puts path.basename
#=> Pathname_class.rb

puts path.dirname
#=> /Users/Alex_Swann/Documents/RUBY/GitHub_Repos/Well-Grounded-Rubyist-2nd-Edition/Chapter-12 (I:O - File systems)

puts path.extname
#=> .rb

path.ascend do |dir|
	puts dir
end
# /Users/Alex_Swann/Documents/RUBY/GitHub_Repos/Well-Grounded-Rubyist-2nd-Edition
# /Users/Alex_Swann/Documents/RUBY/GitHub_Repos
# /Users/Alex_Swann/Documents/RUBY
# /Users/Alex_Swann/Documents
# /Users/Alex_Swann
# /Users
# /

