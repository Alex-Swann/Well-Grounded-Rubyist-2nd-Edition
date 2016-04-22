file = File.new("/Users/Alex_Swann/Documents/RUBY/Learning_Kata/sudoku_checker.rb")

p file.rewind
p file.pos
p file.gets
p file.pos

file.seek(20, IO::SEEK_SET) # sets pointer to pos 20
file.seek(13, IO::SEEK_CUR) # sets pointer 13 bytes from current position
file.seek(-10, IO::SEEK_END) # sets pointer 10 from end

#as well as instance methods .read and .readlines you can do this at the class level

#for instance (irony unintended!):

p file = File.read("/Users/Alex_Swann/Documents/RUBY/Learning_Kata/sudoku_checker.rb")