class Sum_of_multiples

  def self.test(range)
    @num_array = []
    scan(range)
  end

  def self.scan(range)
    (range).each do |x|
      check_nums(x)
    end
    sum_arrray
  end

  def self.check_nums(x)
    if (x % 5) == 0 && (x % 3) == 0
      @num_array << x
    elsif (x % 5) == 0 || (x % 3) == 0
      @num_array << x
    end
  end

  def self.sum_arrray
    p @num_array.inject {|sum, x| sum + x}
  end

end

Sum_of_multiples.test(1..1000) #=> 234168
