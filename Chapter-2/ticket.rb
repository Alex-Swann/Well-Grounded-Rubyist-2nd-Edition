class Ticket
	attr_accessor :price
	attr_reader :date
	attr_reader :venue
 	def initialize(venue, date)
 		@venue = venue
 		@date = date
 	end

 	def date
 		@date = @date + " in the year of our Lord"
 	end

	def price
 		"$#{@price.to_s}"
 	end
end

s = Ticket.new("Hornsey Town Hall", "21st March 2016")
s.price = 205
p s.price
p s.date 
p s.ve
