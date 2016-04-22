=begin

when creating a file, these three keys are used to indicate what you want to do

	for instance

file = File.new('data.out', 'r') # reads a file
file = File.new('data.out', 'w') # overwrites pre-existing file or creates new file
file = File.new('data.out', 'a') # appends to existing file without overwriting it

=end

p f = File.new('data.out', 'w')
p f.puts "David A. Black, Rubyist"
f.close

puts File.read('data.out')
f = File.new('data.out', 'a')
f.puts 'Yukihiro Matsumoto, Ruby creator'
f.close

puts File.read('data.out')


# another example

f = File.new('musicians.txt', 'w')
text = <<EOM 
Pablo Casals|Catalan|cello|1876-1973
Jascha Heifetz|Russian-American|violin|1901-1988
Emanuel Feuermann|Austrian-American|cello|1902-1942
EOM
f.puts text
f.close

puts
File.open("musicians.txt") do |f|
	while record = f.gets
		name, nationality, instrument, dates = record.chomp.split('|')
		puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}."
	end
end

# Errno message errors, system level

=begin

>> File.open("no_file_with_this_name")
Errno::ENOENT: No such file or directory - no_file_with_this_name
>> f = File.open("/tmp")
=> #<File:/tmp>
>> f.gets
Errno::EISDIR: Is a directory - /tmp
>> File.open("/var/root")
Errno::EACCES: Permission denied - /var/root
The Errno family of errors includes not only file-r

=end

