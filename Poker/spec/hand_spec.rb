require 'rspec'
require 'hand'
require 'card'

RSpec.describe Hand do
  subject(:hand) {Hand.new ([Card.new(:S,8),Card.new(:H,8), Card.new(:D,2),Card.new(:H,2),Card.new(:C,7)])  
  }
  describe '#initialize' do
    context 'when dealt a new hand' do
      it 'holds five cards' do
        expect(hand.hand.length).to eq(5)
        expect(hand.hand.all?{|el| el.is_a?(Card)}).to be true
      end
    end
  end
  
  describe '<=>' do 
    context 'compares the value of hand' do
      it 'returns 1 when first hand is greater' do
        expect
        expect
        expect
        expect
      end
      
      it 'returns 0 when tied' do
        expect
        expect
        expect
      end
      
      it 'returns -1 when the second hand is greater' do
        expect
        expect
        expect
        expect
      end
    end
  end
  
  describe 'point' do
    let(:high_card) {Hand.new ([Card.new(:S,10),Card.new(:H,8), Card.new(:D,3),Card.new(:H,2),Card.new(:C,7)])  
    }
    let(:one_pair) {Hand.new ([Card.new(:S,8),Card.new(:H,8), Card.new(:D,9),Card.new(:H,2),Card.new(:C,7)])  
    }
    let(:two_pair) {Hand.new ([Card.new(:S,8),Card.new(:H,8), Card.new(:D,2),Card.new(:H,2),Card.new(:C,7)])  
    }
    let(:three_of_a_kind) {Hand.new ([Card.new(:S,8),Card.new(:H,8), Card.new(:D,8),Card.new(:H,2),Card.new(:C,7)])  
    }
    let(:straight) {Hand.new ([Card.new(:S,7),Card.new(:H,6), Card.new(:D,5),Card.new(:H,4),Card.new(:C,3)])  
    }
    let(:flush) {Hand.new ([Card.new(:S,8),Card.new(:S,2), Card.new(:S,3),Card.new(:S,4),Card.new(:S,5)])  
    }
    let(:full_house) {Hand.new ([Card.new(:S,8),Card.new(:H,8), Card.new(:D,2),Card.new(:H,2),Card.new(:C,2)])  
    }
    let(:four_of_a_kind) {Hand.new ([Card.new(:S,8),Card.new(:H,8), Card.new(:D,8),Card.new(:C,8),Card.new(:S,2)])  
    }
    let(:straight_flush) {Hand.new ([Card.new(:S,8),Card.new(:S,7), Card.new(:S,6),Card.new(:S,5),Card.new(:S,4)])  
    }
    
    context 'when player has a complete set' do
      it 'set is high card' do
        expect(high_card.point).to eq(1)
      end
      it 'set is one pair' do
        expect(one_pair.point).to eq(2)
      end
      it 'set is two pair' do
        expect(two_pair.point).to eq(3)
      end
      it 'set is three of a kind' do
        expect(three_of_a_kind.point).to eq(4)
      end
      it 'set is straight' do
        expect(straight.point).to eq(5)
      end
      it 'set is flush' do
        expect(flush.point).to eq(6)
      end
      it 'set is full house' do
        expect(full_house.point).to eq(7)
      end
      it 'set is four of a kind' do
        expect(four_of_a_kind.point).to eq(8)
      end
      it 'set is straight flush' do
        expect(straight_flush.point).to eq(9)
      end
    end
  end
end