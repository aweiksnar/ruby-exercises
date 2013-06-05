class Fibonacci
 
  def initialize(max)
    array = [1, 2]
    create_array(array, max)
    delete_odds(array)
    sum_array(array)
  end
 
  def create_array(array, max)
    x = 1
    while true
      array[x+1] = (array[x-1] + array[x])
      if array.last > max
        break
      end
      x+=1
    end
    return array
  end
 
  def delete_odds(array)
    array.delete_if {|num| num % 2 != 0 }
  end
 
  def sum_array(array)
    p array.inject {|sum, x| sum + x}
  end
 
end
 
 
Fibonacci.new(4_000_000) #=> 4613732
