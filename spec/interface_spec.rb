require "minitest/autorun"

require_relative "../lib/solitaire_cipher"

describe SolitaireCipher do

  it "encrypts a phrase" do
    start="Code in Ruby, live longer!"
    finish="GLNCQMJAFFFVOMBJIYCB"
    cipher = SolitaireCipher.encrypt(start)
    cipher.must_equal(finish)
  end

  it "decrypts a phrase" do
    start="CODEINRUBYLIVELONGER"
    finish="GLNCQMJAFFFVOMBJIYCB"
    cipher = SolitaireCipher.decrypt(finish)
    cipher.must_equal(start)
  end

end
