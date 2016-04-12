class Ticket
	attr_accessor :venue, :date
	def initialize(venue, date)
		self.venue = venue
		self.date = date
	end
	def ===(other_ticket)
		self.venue == other_ticket.venue
	end
end

ticket1 = Ticket.new("Town Hall", "07/08/13")
ticket2 = Ticket.new("Conference Center", "07/08/13")
ticket3 = Ticket.new("Town Hall", "08/09/13")
puts "ticket1 is for an event at: #{ticket1.venue}."
case ticket1
when ticket2
	puts "Same location as ticket2!"
when ticket3
	puts "Same location as ticket3!"
else
	puts "No match!"
end