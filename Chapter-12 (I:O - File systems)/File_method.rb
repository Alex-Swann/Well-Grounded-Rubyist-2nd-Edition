#Does a file exist?

p FileTest.exist? ("/usr/local/src/ruby/README")
p FileTest.exist? (__FILE__)

#Is the file a directory? A regular file? A symbolic link?

FileTest.directory?("/home/users/dblack/info")
FileTest.file?("/home/users/dblack/info")
FileTest.symlink?("/home/users/dblack/info")

#This family of query methods also includes blockdev?, pipe?, chardev?, and socket?.


#Is a file readable? Writable? Executable?
FileTest.readable?("/tmp")
FileTest.writable?("/tmp")
FileTest.executable?("/home/users/dblack/setup")

#What's the file's size? Is it empty?
FileTest.size("/tmp")
FileTest.zero?("/tmp/tempfile")

#Can also use Kernel's private method test
p test ?e, "/tmp"
p test(?f, __FILE__)