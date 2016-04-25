require_relative 'MicroTest'
require_relative 'card'
class CardTest < MicroTest
 	def setup
 		@deck = PlayingCards::Deck.new
 	end
 	def test_deal_one
 		@deck.deal
 		assert_equal(51, @deck.size)
 	end
 	def test_deal_many
 		@deck.deal(5)
 		assert_equal(47, @deck.size)
 	end
end