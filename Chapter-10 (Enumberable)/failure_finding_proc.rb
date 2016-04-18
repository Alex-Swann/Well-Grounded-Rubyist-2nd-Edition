#this is an interesting example of how to use a Proc as a
#backup for a failed argument so 11 is returned rather than nil

failure = lambda {11}
p over_ten = [1,2,3,4,5,6].find(failure) {|x| x > 10}