
p File::Stat.new("/Users/Alex_Swann/Documents/RUBY/Learning_Kata/sudoku_checker.rb")
File.open("/Users/Alex_Swann/Documents/RUBY/Learning_Kata/sudoku_checker.rb") {|f| p f.stat}

=begin
#=> #<File::Stat dev=0x1000002, 
ino=18433506, 
mode=0100644, 
nlink=1, 
uid=501, 
gid=20, 
rdev=0x0, 
size=808, 
blksize=4096, 
blocks=8, 
atime=2016-04-21 23:33:01 +0100,  # last accessed
mtime=2016-03-23 17:58:38 +0000,  # modification time
ctime=2016-03-23 17:58:38 +0000,  # creation time
birthtime=2016-03-23 17:58:38 +0000>

=end