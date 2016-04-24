system("date")

p `date`

system('grep "D"')
system("cat")

# S? variable is thread-local. If you call a program in one thread,
# its return value affects only the $? in that thread.
# Process::Status object reports on whatever call is made.

# backticks can be used but the difference between 'system' and `` is
# that `` return the value of it is the output of the program you run.

# a call to a nonexistent method using `` raises a ENOENT error.
`datee`
#=> Errno::ENOENT: No such file or directory - datee
$?
#=> #<Process::Status: pid 28094 exit 127>
`date`
#=> "Sat Jan 18 07:35:32 EST 2014\n"
$?
#=> #<Process::Status: pid 28095 exit 0>

p %x{date}

# 'open' & Open.popen3
# the pipes in the below example indicate it is a program we want
# to talk to NOT open a file. This only works when typing using IRB.

d = open("|cat", "w+")
#=> #<IO:fd 11>
d.puts "Hello to cat"
#=>nil
d.gets
#=> "Hello to cat\n"
d.close
#=> nil

# *********

# this shows how open3 stores what you determined to be the input, ouput
# error messaging for the program which you can then r/w to.
# again this only works within IRB.

require 'open3'
stdin,stdout,stderr = Open3.popen3("cat")
stdin.puts("Hi. \nBye")
stdout.gets
stdout.gets







