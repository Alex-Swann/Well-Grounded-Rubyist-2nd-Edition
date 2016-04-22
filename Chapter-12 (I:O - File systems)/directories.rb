require 'fileutils'

p FileUtils::mkdir_p 'test'
#p Dir.mkdir(".TESTABLE") # errors if file already created


p d = Dir.new("test")

p d.entries 
p Dir.entries('test') 
p Dir["#{File.expand_path(__FILE__)}/test"] #globbing

# method for deleting hidden entries
d = Dir.new("test")
entries = d.entries
entries.delete_if {|entry| entry =~ /^\./ }
entries.map! {|entry| File.join(d.path, entry) }
entries.delete_if {|entry| !File.file?(entry) }
print "Total bytes: "
puts entries.inject(0) {|total, entry| total + File.size(entry) }


# Directory globbing, you can use square bracket notation but
# also can use the .glob method which is much more versatile
p Dir["test"] #=> ["test"]
p Dir.glob("test*")  #=> ["test", "test2", "TEST3", "TESTABLE"]
p Dir.glob("test", File::FNM_CASEFOLD) #=> ["test"]
p Dir.glob("*test*", File::FNM_DOTMATCH | File::FNM_CASEFOLD) #=> [".TESTABLE", "test", "test2", "TEST3", "TESTABLE"]

# nice little method to determine size of files within a directory
dir = "test"
entries = Dir["#{dir}/*"].select {|entry| File.file?(entry) }
print "Total bytes: "
puts entries.inject(0) {|total, entry| total + File.size(entry) }

# directory method tests (Creates a sample directory and file
# then deletes them)
newdir = "directory"
newfile = "newfile"
Dir.mkdir(newdir)
Dir.chdir(newdir) do
	File.open(newfile, "w") do |f|
		f.puts "Sample file in new directory"
	end
	puts "Current directory: #{Dir.pwd}"
	puts "Directory listing: "
	p Dir.entries(".")
	File.unlink(newfile)
end
Dir.rmdir(newdir)
print "Does #{newdir} still exist? "
if File.exist?(newdir)
	puts "Yes"
else
	puts "No"
end





















