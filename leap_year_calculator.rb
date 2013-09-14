class Year
  def initialize(year)
    @year = year
  end

  def divisible_by_4?
    @year % 4 == 0
  end

  def divisible_by_100?
    @year % 100 == 0
  end

  def divisible_by_400?
    @year % 400 == 0
  end

  def leap?
    if divisible_by_4? && divisible_by_400?
      true
    elsif divisible_by_4? && divisible_by_100?
      true
    else
      false
    end
  end
end

puts Year.new(2000).leap? #=> true
