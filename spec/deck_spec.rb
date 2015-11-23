require "minitest/autorun"

require_relative "../lib/solitaire_cipher/deck"

describe SolitaireCipher::Deck do

  it "finds the next letter" do
    #test the examples from the ruby quiz, to ensure that I get the same answers
    #as are specified in the quiz description.
    deck = SolitaireCipher::Deck.new()
    [4,49,10,24,8,51,44,6,4,33].each do |number|
      deck.next_number.must_equal(number)
    end
  end

end

