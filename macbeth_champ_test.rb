gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'macbeth_champ'

class MacbethChampTest < Minitest::Test

	def setup
		@macbeth_champ = MacbethChamp.new
	end

	def test_mac_champ
		assert_equal "The word is 'that' and occurres 228 times", @macbeth_champ.mac_champ(2)
	end

	def test_different_rank
		assert_equal "The word is 'with' and occurres 153 times", @macbeth_champ.mac_champ(3)
	end
end

