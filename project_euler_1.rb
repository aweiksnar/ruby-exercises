class Sum_of_multiples

  def initialize(range)
    @num_array = []
    scan(range)
  end

  def scan(range)
    (range).each do |x|
      check_nums(x)
    end
    sum_arrray
  end

  def check_nums(x)
    if (x % 5) == 0 && (x % 3) == 0
      @num_array << x
    elsif (x % 5) == 0
      @num_array << x
    elsif (x % 3) == 0
      @num_array << x
    end
  end

  def sum_arrray
    p @num_array.inject {|sum, x| sum + x}
  end

end

Sum_of_multiples.new(1..1000) #=> 234168
