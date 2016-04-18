arr = [1,"2",3,6,"8",4]

begin
p arr.sort
	rescue
		p arr.sort{|a,b| a.to_i <=> b.to_i}
end

#you can also use sort_by like the above in order to achieve
#the same result

p arr.sort_by{|i| i.to_i}

#you can also choose to include Comparable in your classes
#and then redine the spaceship operator if you wanted full
#functionality of Comparable with your own defined methods.