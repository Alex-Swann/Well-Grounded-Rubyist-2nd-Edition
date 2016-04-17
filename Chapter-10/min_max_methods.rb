arr = %w{hey hodfh jfhskjh sdjfnkjsbfksjb gh dfhh dj}

p arr.min
p arr.max

#this is by default considered min and max based on the 
#alphabetical order of the elements

p arr.min_by{|a| a.length}
p arr.minmax_by{|x| x.length}

