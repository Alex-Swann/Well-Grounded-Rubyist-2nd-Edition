class Bid
	include Comparable
	attr_accessor :estimate
	def <=>(other_bid)
		if self.estimate < other_bid.estimate
			-1
		elsif self.estimate > other_bid.estimate
			1
		else
			0
		end
	end
end

bid = Bid.new
bid.estimate = 100
bid2 = Bid.new
bid2.estimate = 105

p bid <=> bid2