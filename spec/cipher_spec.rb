require "minitest/autorun"

require_relative "../lib/solitaire_cipher/cipher"

describe SolitaireCipher::Cipher do

  it "encrypts an incoming string" do
    incoming_string='Code in Ruby, live longer!'
    cipher=SolitaireCipher::Cipher.new(incoming_string)
    cipher.encrypt.must_equal("GLNCQMJAFFFVOMBJIYCB")
  end

  it "decrypts an incoming string" do
    incoming_string = {}
    incoming_string['GLNCQMJAFFFVOMBJIYCB']="CODEINRUBYLIVELONGER"
    incoming_string['CLEPKHHNIYCFPWHFDFEH']="YOURCIPHERISWORKINGX"
    incoming_string['ABVAWLWZSYOORYKDUPVH']="WELCOMETORUBYQUIZXXX"
    incoming_string.each do |key,value|
      SolitaireCipher::Cipher.new(key)
        .decrypt
        .must_equal(value)
    end
  end

end

