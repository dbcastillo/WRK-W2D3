require 'rspec'
require 'card'

RSpec.describe Card do
  
  subject(:card){Card.new(:S,14)}
  describe "#initialize" do
    it 'gives a card a suit and a value' do
      expect(card.value).to eq(14)
      expect(card.suit).to eq(:S)
    end
  end  
  
end  