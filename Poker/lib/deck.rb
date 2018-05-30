class Deck
  
  attr_reader :deck
  def initialize 
    @deck = []
    suits = [ :S , :D, :H ,:C]
    suits.each do |suit|
      2.upto(14) do |i|
        @deck << Card.new(suit,i)
      end
    end
  end  
  
  def shuffle!
    until self != Deck.new
      shuffled = self.deck.shuffle!
    end  
  end  
  
  def ==(deck2)
    self.deck == deck2.deck
  end  
  
end  