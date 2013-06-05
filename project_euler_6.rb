class Sum_square_difference
 
  def initialize(input_range)
    @arr = []
    @arr2 = []
    @input_range = input_range
    scan_for_sum_of_squares
    scan_for_square_of_sum
  end
 
  def scan_for_sum_of_squares
    (@input_range).each do |x|
      a = (x ** 2)
      @arr << a
    end
    sum_of_squares
  end
 
  def scan_for_square_of_sum
    (@input_range).each do |x|
      @arr2 << x
    end
    square_of_sum
  end
 
  def sum_of_squares
    @arr.inject{|sum,x| sum + x}
  end
 
  def square_of_sum
    (@arr2.inject{|sum,x| sum + x})**2
  end
 
  def difference
    square_of_sum - sum_of_squares
  end
end
 
a = Sum_square_difference.new(1..100)
p a.difference    #=> 25164150
