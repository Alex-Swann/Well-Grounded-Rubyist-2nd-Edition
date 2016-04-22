record = File.open(File.expand_path("../record.txt", __FILE__), "w")
old_stdout = $stdout 
$stdout = record
$stderr = $stdout
puts "This is a record"
z = 10/0

