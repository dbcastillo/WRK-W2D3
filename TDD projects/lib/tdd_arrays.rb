class Array 
  
  def my_uniq
    uniqs = [] 
    self.each do |el|
      uniqs << el unless uniqs.include?(el)
    end   
    uniqs
  end 
  
  def two_sum 
    sums=[]
    self.each_with_index do |el,i|
      self.each_with_index do |el2,j|
        sums << [i,j] if el+el2==0 && i!=j && !sums.include?([j,i])
      end  
    end
    sums
  end 
  
  def my_transpose 
    return self if self.empty?
    matrix = []
    temp = []
    i = 0 
    while i < self.first.size
      self.each do |row| 
        temp << row[i]
      end
      matrix << temp   
      i+=1
      temp = []
    end 
    matrix
  end 
  
  def stock_picker 
    bestpair = nil
    self.each_with_index do |el,i|
      self.each_with_index do |el2,j|
        bestpair||=[i,j]
        bestpair=[i,j] if i<j && (el2-el) > (self[bestpair.last]-self[bestpair.first])
      end   
    end   
    bestpair
  end          
  
end   