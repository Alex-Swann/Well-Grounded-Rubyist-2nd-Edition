#Another specialized string transformation is crypt, which performs a Data Encryption
#Standard (DES) encryption on the string, similar to the Unix crypt(3) library function.
#The single argument to crypt is a two-character salt string:
p "David A. Black".crypt("34")
#=> "347OEY.7YRmio"

p "a".succ
#=> "b"
p "abc".succ
#=> "abd"
p "abz".succ
#=> "baa"

puts __ENCODING__

st = "Hey"
p st.encoding
st.encode!("US-ASCII")
p st.encoding

#magic comment ( # encoding: ASCII )

#MAGIC