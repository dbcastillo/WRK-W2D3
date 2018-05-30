require 'rspec'
require 'deck'

RSpec.describe Deck do
  
  subject(:poker_deck){Deck.new}
  describe "#initialize" do
    context 'when the game starts'
    it 'sets up a 52 Card deck' do
      expect(poker_deck.deck.length).to eq(52)
      expect(poker_deck.deck.all?{|el| el.is_a?(Card)}).to be true
    end
  end  
  
  describe "#shuffle" do 
    let(:deck2){Deck.new}
    it 'shuffles the deck' do 
      pre_shuffled = deck2.deck
      poker_deck.shuffle!
      expect(poker_deck.deck).to_not eq(pre_shuffled)
    end
  end  
end  