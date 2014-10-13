require "minitest/autorun"

require_relative "../lib/solitaire_cipher/deck"

describe SolitaireCipher::Deck do

  it "finds the next letter" do
    deck = SolitaireCipher::Deck.new()
    [4,49,10,24,8,51,44,6,4,33].each do |letter|
      deck.next_number.must_equal(letter)
    end
  end

end

