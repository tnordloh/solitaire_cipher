require_relative 'letter_map'
require_relative 'deck'

module SolitaireCipher

  class Cipher
    
    def initialize cipher_string, deck=nil
      @cipher_string,@deck,=cipher_string,deck
    end

    def encrypt
      cipher { |character, next_number| next_number+character } 
    end

    def decrypt
      cipher { |character, next_number| character+26-next_number } 
    end

    private

    def cipher &block
      deck=SolitaireCipher::Deck.new()
      SolitaireCipher::LetterMap.new(@cipher_string).to_i.map { |character|
        deck.to_letter(block.call(character,deck.next_number))
      }.join("")
    end

  end

end
