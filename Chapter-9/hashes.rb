p Hash[[[1,2],[3,4],[5,6]]]

state_hash = {}
state_hash.store("New York", ["NY"])
state_hash["New York"] << "MY"
p state_hash

#.fetch can have more than one argument and unlike the [] method also
# raises a TypeError unlike [] which returns nil

p state_hash
p state_hash["New Jersey"]

def errorHash
 state_hash = {}
 state_hash.store("New York", "NY")
 state_hash.fetch("New Jersey")
	rescue
		state_hash.fetch("New Jersey", "New York")
end

p errorHash

p state_hash
p state_hash["ey"]
p state_hash.fetch("ey", 1) #creates a default value for this lookup


#destructive combine hashes method
h1 = {"Smith" => "John",
 "Jones" => "Jane" }
h2 = {"Smith" => "Jim" }

p h1.update(h2)
p h1
p h2

#non-destructive combine hashed method
h1 = {"Smith" => "John",
 "Jones" => "Jane" }
h2 = {"Smith" => "Jim" }

p h1.merge(h2)
p h1
p h2

p h1.select{|k,v| k == "Smith"}
p h1.reject{|k,v| k == "Smith"}

#there's also keep_if and delete_if which permanently change the hash
#similar to using the bang operator (i.e. select!)

p h1.invert
p h1

#only invert if you're certain you have BOTH unique key and unique value
#elements otherwise you risk losing your data

#similar to arrays there is also a clear method which although
# results in an empty hash it means it retains its object id number

