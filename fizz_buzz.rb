# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the number
# and for the multiples of five print “Buzz”.
# For numbers which are multiples of both three and five print “FizzBuzz”


class Fizzbuzz

  def initialize(input)
    @input = input
    test_range
  end

  def test_range
    @input.each do |num|
      check_fizzbuzz_nums(num)
    end
  end

  def check_fizzbuzz_nums(num)
    if (num % 5) == 0 && (num % 3) == 0
      puts "FizzBuzz"
    elsif (num % 5) == 0
      puts "Buzz"
    elsif (num % 3) == 0
      puts "Fizz"
    else
      puts num
    end
  end
end

Fizzbuzz.new(1..100)
