module SolitaireCipher

  class LetterMap
    def initialize cipher_string
      @cipher_string=cipher_string
    end

    def to_i
      @cipher_string.upcase
                    .tr('^A-Z',"")
                    .each_char
                    .map {|char| char.ord-"A".ord+1 }
    end

  end
end
