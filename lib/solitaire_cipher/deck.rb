module SolitaireCipher
  class Deck

    def initialize deck = nil
      if deck == nil 
        @deck = (1..52).to_a << :JOKER_A << :JOKER_B
      else
        @deck=deck
      end
    end
    
    def next_number
      move_jokers;triple_cut;count_cut
      count =@deck[0].respond_to?(:+) ? @deck[0] : 53
      @deck[count].respond_to?(:+) ? @deck[count] : next_number
    end

    def to_letter number
      return "Z" if number == 26
      (number % 26 - 1 + "A".ord()).chr
    end

    private  

    def joker_position joker
      @deck.index(joker)
    end

    def triple_cut
      x,y = [joker_position(:JOKER_A),joker_position(:JOKER_B)].sort
      @deck =@deck.drop(y+1) + @deck[x..y] + @deck.take(x)
    end

    def move_jokers
      move_joker :JOKER_A
      2.times { move_joker :JOKER_B }
    end

    def move_joker joker
      index = joker_position(joker)
      if index==@deck.length-1
        @deck.insert(1,@deck.delete_at(index))
      else
        @deck.insert(index+1,@deck.delete_at(index))
      end
    end

    def count_cut
      count=@deck[-1].respond_to?(:+) ? @deck[-1] : 53
      count.times { @deck.insert(-2,@deck.shift) }
    end

  end

end
