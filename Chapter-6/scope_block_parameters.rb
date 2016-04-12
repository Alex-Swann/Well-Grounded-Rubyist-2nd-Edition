def block_local_variable
 x = "Original x!"
 3.times do |i|
 x = i
 puts "x in the block is now #{x}"
 end
 puts "x after the block ended is #{x}"
end
block_local_variable #original  x changed as variable 'x' has been reassigned in block

def block_local_variable
 x = "Original x!"
 3.times do |i ;x|
 x = i
 puts "x in the block is now #{x}"
 end
 puts "x after the block ended is #{x}"
end
block_local_variable #semi-colon creates new empty variable x but ONLY for the block and doesn't affect variable 'x' outside block

def block_local_variable
 x = "Original x!"
 3.times do |i, x|
 x = i
 puts "x in the block is now #{x}"
 end
 puts "x after the block ended is #{x}"
end
block_local_variable #same result as method before but this uses a parameter named 'x' NOT a true block-local variable named'x'. Depending on your methods used this may be already assigned a value (e.g. each_with_index {|k, v|} ) rather than being a reserved name.

=begin

 In sum, three basic “flavors” of block variable are available to you:
■ Local variables that exist already when the block is created
■ Block parameters, which are always block-local
■ True block-locals, which are listed after the semicolon and aren’t assigned to
but do protect any same-named variables from the outer scope
	
=end