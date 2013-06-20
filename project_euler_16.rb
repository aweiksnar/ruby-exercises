class Power_digit_sum

  def initialize(input_number)
    product = input_number
    @number_string_array = product.to_s.split(//)
    @integer_array = []
    convert_numbers_to_integers
  end

  def convert_numbers_to_integers
    @number_string_array.each do |x|
      x = x.to_i
      @integer_array << x
    end
    sum_of_digits
  end

  def sum_of_digits
    @integer_array.inject{|sum,x| sum + x}
  end
end

p Power_digit_sum.new(2**1000).sum_of_digits #=> 1366
