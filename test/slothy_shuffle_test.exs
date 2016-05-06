defmodule Karten.SlothyShuffleTest do
	use ExUnit.Case, async: true
	alias Karten.{SlothyShuffle, Deck}

	test "card count consistent" do
		deck1 = Deck.new
		deck2 = Deck.new
		shuffled = SlothyShuffle.shuffle([deck1, deck2])
		assert length(shuffled) == 104
	end

	test "shuffled deck is not equal to original deck" do
		deck = Deck.new
		shuffled = SlothyShuffle.shuffle([deck])
		refute deck == shuffled
	end
end
