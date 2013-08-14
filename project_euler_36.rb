#Double-base Palindromes

class DoubleBasePalindromeSum

  def initialize(range)
    @range = range
    @sum_of_palindromes = 0
  end

  def loop_through_range
    @range.each {|num| add_palindromes_to_num(num)}
    @sum_of_palindromes
  end

  def add_palindromes_to_num(num)
    if num.to_s == num.to_s.reverse && num.to_s(2) == num.to_s(2).reverse
      @sum_of_palindromes += num
    end
  end

end

p DoubleBasePalindromeSum.new(1..999_999).loop_through_range
