require 'rspec'
require 'tdd_hanoi.rb'

RSpec.describe TowersofHanoi do 
  
  subject(:towers) {TowersofHanoi.new}
  let(:winning_towers){TowersofHanoi.new([[],[3,2,1],[]])}
  describe '#initialize' do  
    context 'when game starts' do
      it 'sets towers' do
        expect(towers.discs).to eq([[3,2,1], [], []])
      end  
    end    
  end
  
  describe '#move_disc' do
    let(:towers2) {TowersofHanoi.new([[3], [2], [1]])}
    it 'moves discs from tower to tower' do
      towers.move_disc(0,1)
      expect(towers.discs).to eq([[3,2], [1], []])
    end
    
    context 'when move is invalid' do
      it 'throws an error' do
        expect {towers2.move_disc(0,1)}.to raise_error("Invalid move")
        expect {towers2.move_disc(5,7)}.to raise_error("Invalid positions")
        expect {towers.move_disc(0,0)}.to raise_error("You can't move a disk onto the same position")
      end
    end
    
  end

  describe "#won?" do 
    context 'when the game is won' do 
      it 'returns true' do
        expect(winning_towers.won?).to be true
      end 
    end
    
    context 'when the game is ongoing' do 
      it 'returns false' do
        expect(towers.won?).to be false
      end 
    end
  end
  
  describe "#play" do 
    context 'when game is over' do
      it 'displays congrats' do
        expect(winning_towers.play).to eq("Congrats")
      end
    end 
  end   
end