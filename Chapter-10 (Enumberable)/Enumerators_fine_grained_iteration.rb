names = %w{Harry Potter Hermione Granger Ron Weasley}
begin
p names.next
	rescue
end

#next is a statment usually used within an iteration method
#however it can be used as thus for an enumerator

e = names.to_enum
p e.next
p e.next
p e.rewind
p e.next

#the most important fact with enumerators is the fact that you
#can make a non-enumerable object enumerable by converting it to
#an enumerator without mixing in the Enumerable module so you have
#full use of the Enumerable module without affecting the class you've created.

#For example:
module Music
	class Scale
		NOTES = %w{c c# d d# e f f# g a a# b}
		def play
			NOTES.each{|note| yield note}
		end
	end
end

scale = Music::Scale.new
scale.play{|note| puts "Next note is #{note}"}
#scale.map{|note| note.upcase} would return an NoMethodError as its class hasn't defined map

e = scale.enum_for(:play) #this uses the defined play methos as the enum's each method
p e.each {|note| puts "Next note is #{note}"} #same as the above play method except it also returns the receiver

#HOWEVER the most interesting point is this****
#you can use map, inject etc etc now on 'e' event though the Music module
# hasn't mixed in Enumerable or defined a method associated with those names.

p e.map{|note| note.upcase}
p e.inject{|str, note| str << note}
p e.select {|note| note.include?('f')}

