require 'rspec'
require 'tdd_arrays.rb'

RSpec.describe Array do 
  describe "#my_uniq" do 
    subject(:arr) {[3,3,3,3,3]}  
    it 'returns unique elements' do 
      expect(arr.my_uniq).to eq([3])
    end
    
    context 'elements are already unique' do 
      let(:arr2){[0,1,2,3]}  
      it 'returns original array' do 
        expect(arr2.my_uniq).to eq([0,1,2,3])
      end 
    end     
  end
  
  describe "#two_sum" do 
    let(:arr) {[-1, 0, 2, -2, 1]}
    
    it 'includes positions that sum to zero' do
      expect(arr.two_sum).to eq([[0,4], [2,3]])
    end
    
    it 'sorts the positions' do
      expect(arr.two_sum.sort).to eq(arr.two_sum)
    end
    
    it 'does not include the same positions twice' do
      expect(arr.two_sum).to_not include([1,1])
    end
  end   
  
  describe "#my_transpose" do
    let(:rows) {[
    [0, 1, 2],
    [3, 4, 5]
  ]}
  
    it 'flips the rows and columns' do
      expect(rows.my_transpose[0]).to eq([0,3])
      expect(rows.my_transpose[1]).to eq([1,4])
      expect(rows.my_transpose[2]).to eq([2,5])
    end
    
    let(:empty) {[]}
    it 'handles an empty matrix without issues' do
      expect(empty.my_transpose).to eq([])
    end
  end
  
  describe "#stock_picker" do
    let(:stocklist) {[4,6,5,8,9,2,3,5,1,4,6]}
    
    it 'if tied, returns first pair' do 
      expect(stocklist.stock_picker).to eq([0,4])
    end
    
  end
end

