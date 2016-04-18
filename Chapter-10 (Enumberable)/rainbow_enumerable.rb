class C
	include Enumerable
	def each

	end
end

class Rainbow
	include Enumerable
	def each
		yield "red"
		yield "orange"
		yield "yellow"
		yield "green"
		yield "blue"
		yield "indigo"
		yield "violet"
	end
end

r = Rainbow.new
r.each do |color|
	puts "Next color: #{color}"
end

p r.find{|x| x.start_with?("r")}
p r.select{|x| x.size == 6}
p r.map{|x| x[0...3]}

