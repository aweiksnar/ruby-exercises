class Year
  def initialize(year)
    @year = year
  end
 
  def divisible_by_4?
    (@year % 4) == 0 ? true : false
  end
 
  def divisible_by_100?
    (@year % 100) == 0 ? true : false
  end
 
  def divisible_by_400?
    (@year % 400) == 0 ? true : false
  end
 
  def leap?
    if divisible_by_4? == true && divisible_by_400? == true
      return true
    elsif divisible_by_4? == true && divisible_by_100? == false
      return true
    else
      return false
    end
  end
end
 
Year.new(2000).leap? #=> true
