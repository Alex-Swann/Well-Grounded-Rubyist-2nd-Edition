require_relative "stacklike"
class Suitcase
end

class Cargohold
	include Stacklike
	def load_and_report(obj)
		print "Loading object "
		puts obj.object_id

		add_to_stack(obj)
	end
	def unload
		take_from_stack
	end
end
ch = Cargohold.new
sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new
ch.load_and_report(sc1)
ch.load_and_report(sc2)
ch.load_and_report(sc3)
first_unloaded = ch.unload
print "The first suitcase off the plane is...."
puts first_unloaded.object_id

string_b = "aabb4keekkk447abae777err99r9"
h = string_b.chars.group_by { |c| c }.map { |c, a| [c, a.size] }.to_h
#=> {"a"=>4, "b"=>3, "4"=>3, "k"=>4, "e"=>4, "7"=>4, "r"=>3, "9"=>3}
# #to_h is optional here

n = h.values.min - 1
#=> 3
# use map(&:last) instead of #values if not using #to_h previously

p h.map { |k, v| k * (v - n) }.join
#=> "4779aabeekkr"r"