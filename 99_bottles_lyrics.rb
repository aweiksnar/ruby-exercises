#99 bottles of beer on the wall lyrics - JumpstartLab Warmup #1

class Beer
  def initialize
    @count = 99
    main_loop
  end
 
  def main_lyrics
    puts "#{@count} bottles of beer on the wall, #{@count} bottles of beer"
    puts "Take one down and pass it around, #{@count - 1} bottles of beer on the wall."
  end
 
  def subtract_a_bottle
    @count -= 1
  end
 
  def last_line
    puts "#{@count} bottle of beer on the wall, #{@count} bottle of beer"
    puts "Take one down and pass it around, #{@count - 1} bottles of beer on the wall."
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, #{@count + 98} bottles of beer on the wall."
  end
 
  def main_loop
    while @count > 1
      main_lyrics
      subtract_a_bottle
      if @count == 1
        last_line
      end
    end
  end
end
 
Beer.new
