# fizzbuzz using super calls and classes instead of a loop

class Fizz
  def self.evaluate(num)
    exit if num > 100
    if num % 3 < 1
      puts "#{num} Fizz"
    else
      puts num
    end
    num += 1
    FizzBuzz.evaluate(num)
  end
end

class Buzz < Fizz
  def self.evaluate(num)
    if num % 5 < 1
      puts "#{num} Buzz"
      num += 1
    end
    super(num)
  end
end

class FizzBuzz < Buzz
  def self.evaluate(num)
    if num % 3 < 1 && num % 5 < 1
      puts "#{num} FizzBuzz"
      num += 1
    end
    super(num)
  end
end

FizzBuzz.evaluate(1) # => fizzbuzz numbers 1..100
