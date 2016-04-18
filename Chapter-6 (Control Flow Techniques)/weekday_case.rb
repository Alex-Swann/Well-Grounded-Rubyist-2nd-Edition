case
when user.first_name == "David", user.last_name == "Black"
 puts "You might be David Black."
when Time.now.wday == 5 #Sunday = 0
 puts "You're not David Black, but at least it's Friday!"
else
 puts "You're not David Black, and it's not Friday."
end


puts case
 when user.first_name == "David", user.last_name == "Black"
 "You might be David Black."
 when Time.now.wday == 5
 "You're not David Black, but at least it's Friday!"
 else
 "You're not David Black, and it's not Friday."
 end
