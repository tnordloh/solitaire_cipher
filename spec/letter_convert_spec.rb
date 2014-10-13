require "minitest/autorun"

require_relative "../lib/solitaire_cipher/letter_map"

describe SolitaireCipher::LetterMap do

  it "converts a message to relevant numbers" do
    letter_map = SolitaireCipher::LetterMap.new("Code in Ruby, Live Longer!")
    letter_map.to_i.must_equal([3,15,4,5,9,14,18,21,2,25,12,9,22,5,12,15,14,
                               7,5,18])
  end
end
