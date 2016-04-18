require 'set'

new_england = ["Conneticut", "Maine", "Massachusetts", "New Hampshire", "Rhode Island", "Vermont"]

p state_set = Set.new(new_england)

p state_set.add?("California")
p state_set.add?("California")

state_set << "North Carolina"
p state_set

tri_state = ["New York","New Jersey","Conneticut"]

p state_set - tri_state

p state_set + tri_state

p state_set | tri_state

p state_set & tri_state

p state_set ^ tri_state

#subset and superset methods for sets enable the coder to understand whether
#a set contains the same elements as another set and whether it's larger or
#smaller than that set.