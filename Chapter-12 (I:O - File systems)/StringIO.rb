

# you can also do tests on real files using Ruby's standard library
# temp-file

#require 'temp-file'
#tf = Tempfile.new("directories.rb")

require 'stringio'
require_relative 'decommenter'
string = <<EOM
# This is a comment.
This isn't a comment.
# This is another comment.
#And so is this.
	# And this one
Not sure... # what about this?
EOM

infile = StringIO.new(string)
outfile = StringIO.new("")
DeCommenter.decomment(infile,outfile)
puts outfile.string
