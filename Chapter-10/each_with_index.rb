#this is an unusual methos to use with a hash however it provides an
#interesting afterthought on hashes that they contain a sort of 
#meta-index for all their key/value pairs.

letters = Hash['a','ay','b','bee','c','see']
p letters
letters.each_with_index {|(k,v),i| puts i}

arr = %w{hey how are you doing you silly lass}
p arr

arr.each.with_index(1) {|e,i| puts i}

#with_index method allows a starting index value for the method
#meaning you don't have to +1 the indices if you are wanting to 
#normalize them with the actual positioning of the values