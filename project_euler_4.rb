class Largest_palindrome
  def initialize(input_range)
    @arr = []
    @input_range = input_range
    scan
  end
 
  def scan
    (@input_range).each do |x|
      (@input_range).each do |y|
        @a = (x * y)
        check
      end
    end
  end
 
  def check
    if @a.to_s == @a.to_s.reverse
      add_to_array
    end
  end
 
  def add_to_array
    @arr << @a
  end
 
  def print_result
    @arr.max
  end
end
 
three_digit_numbers = 100..999
Largest_palindrome.new(three_digit_numbers).print_result #=> 906609
