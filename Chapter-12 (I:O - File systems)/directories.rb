require 'fileutils'

p FileUtils::mkdir_p 'test'
# p Dir.mkdir("test2") # errors if file already created

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