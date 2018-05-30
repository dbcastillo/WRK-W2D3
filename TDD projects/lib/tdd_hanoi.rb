class TowersofHanoi
  
  attr_reader :discs
  def initialize(discs=[[3,2,1],[],[]])
    @discs = discs
  end  
  
  def won?
    if self.discs[1] == [3,2,1] || self.discs[2] == [3,2,1]
      return true
    else 
      return false
    end
  end 
  
  def take_turn
    puts "Enter starting position"
    position1 = gets.chomp.delete(" ").to_i
    puts "Enter end position"
    position2 = gets.chomp.delete(" ").to_i
    self.move_disc(position1,position2)
  end  
  
  def render
    hash = { nil => "       ", 1 => "  | |  ", 2 => " |   | ", 3 => "|     |" }
    2.downto(0) do |i|
      self.discs.each do |row|
        print hash[row[i]]
      end  
      puts ""
    end  
  end 
  
  def play 
    render
    until self.won? 
      self.take_turn 
      render
    end 
    self.congrats
  end    
  
  def congrats
    puts "Congrats"
    "Congrats"
  end  
  
  def move_disc(pos1,pos2)  
    raise "You can't move a disk onto the same position" if pos1 == pos2
    raise "Invalid positions" unless pos1.between?(0,2) || pos2.between?(0,2)
    raise "Invalid move" if self.discs[pos1].empty? || (!self.discs[pos2].empty? && (self.discs[pos1].last > self.discs[pos2].last))
    
    moving_disc = self.discs[pos1].pop
    self.discs[pos2].push(moving_disc)
  end
  
end  

if __FILE___ = $PROGRAM_NAME
  game=TowersofHanoi.new
  game.play
end  