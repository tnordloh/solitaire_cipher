require "minitest/autorun"

require_relative "../lib/solitaire_cipher/deck"

describe SolitaireCipher::Deck do

  it "finds the next letter" do
    deck = SolitaireCipher::Deck.new()
    %w[D W J X H Y R F D G].each do |letter|
      deck.to_letter(deck.next_number).must_equal(letter)
    end
  end

end

