module PlayingCards
	RANKS = %w{2 3 4 5 6 7 8 9 10 J Q K A}
	SUITS = %w{clubs diamonds hearts spades}
	class Deck
		def initialize
			@cards = []
			RANKS.each do |r|
				SUITS.each do |s|
					@cards << "#{r} of #{s}"
				end
			end
			@cards.shuffle!
		end
		def deal(n=1)
			@cards.pop(n)
		end
		def size
			@cards.size
		end
	end
end

require 'minitest'
require 'minitest/unit'
require 'minitest/autorun'

class CardTest < MiniTest::Test
	def setup						# setup is a keyword that works with MiniTest. It's therefore executed before every test method in the test class.
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