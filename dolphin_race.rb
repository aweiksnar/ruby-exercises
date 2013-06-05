#Dolphin/Penguin racing game from third week of learning ruby. Designed to be ran in terminal.


class Dolphin
  attr_accessor :name, :gender, :age
 
  def initialize
 
    @distance_to_finish = 60
    @opponent_distance_to_finish = 60
 
    puts "What do you want your dolphin named?"
    name = gets.chomp
 
    puts "Is it male or female?"
    gender = gets.chomp
 
    x = rand(30)
    puts "It's age is #{x}"
 
    if x < 10
      puts "That is quite young for a dolphin"
    elsif x < 20
      puts "That is a middle aged dolphin"
    else
      puts "That is an old dolphin"
    end
 
    start
   end
 
 
   def start
   puts "Here are the rules:"
   puts "You can either jump, swim, or surf your way towards the finish. If you choose to *jump* you will move anywhere from 5 to 15 yards forward. If you choose to *swim* you will move anywhere from 8 to 12 yards forward. If you choose to *surf* you will move anywhere from 1 to 20 yards forward. Surfing is the riskiest. Swimming is the safest. Jumping is inbetween.
   "
 
   puts "Are you ready to start the race?"
      ans = gets.chomp
      if ans.downcase == "yes"
        puts "3...2...1...GO!"
        choice
      elsif ans.downcase == "no"
        puts "okay :("
          exit
      else
        puts "Please say yes"
        start
      end
   end
 
  def choice
    puts "Do you want it to jump, swim or surf?"
      command = gets.chomp
      if command.downcase == "jump"
        jump
      elsif command.downcase == "swim"
        swim
      elsif command.downcase == "surf"
        surf
      else
        puts "Please type jump, swim, or surf"
        choice
      end
   end
 
  def jump
    puts "***************************************************"
    jump_array = ["Your dolphin jumped high in the air and did a front-flip", "Your dolphin flew above the water and did a back-flip.", "Your dolphin got out of the water and started jumping on a trampoline towards the finish."]
    puts jump_array.sample
 
    @distance_to_finish -= rand(5..15)
    @opponent_distance_to_finish -=rand(5..15)
 
    if @distance_to_finish <= 0
      finish_race_win
    elsif @opponent_distance_to_finish <= 0
      finish_race_lose
    end
 
    puts "Only #{@distance_to_finish} yards to the finish line left. Your penguin opponent has #{@opponent_distance_to_finish} yards left."
 
    choice
 
  end
 
  def swim
    puts "***************************************************"
 
    swim_array = ["Your dolphin swam quickly ahead towards the finish.", "Your dolphin pumped his tail and accellerated forwards."]
    puts swim_array.sample
 
    @distance_to_finish -= rand(8..12)
    @opponent_distance_to_finish -= rand(5..15)
 
    if @distance_to_finish <= 0
      finish_race_win
    elsif @opponent_distance_to_finish <= 0
      finish_race_lose
    end
 
    puts "Only #{@distance_to_finish} yards to the finish line left. Your penguin opponent has #{@opponent_distance_to_finish} yards left."
 
    choice
 
  end
 
  def surf
    puts "***************************************************"
    surf_array = ["Your dolphin caught a wave and was propelled forwards.", "Your dolphin hopped on a surfboard and moved quickly ahead."]
    puts surf_array.sample
    @distance_to_finish -= rand(1..20)
    @opponent_distance_to_finish -= rand(5..15)
 
    if @distance_to_finish <= 0
      finish_race_win
    elsif @opponent_distance_to_finish <= 0
      finish_race_lose
    end
 
    puts "Only #{@distance_to_finish} yards to the finish line left. Your penguin opponent has #{@opponent_distance_to_finish} yards left."
 
    choice
 
  end
 
  def finish_race_win
    puts "and... The race is over. YOU WON!!! Dolphins for life!!"
    exit
  end
 
  def finish_race_lose
    puts "and... The race is over. You lost to a penguin! HAHAH!"
    exit
  end
 
 
 
end
 
#########################################################################
 
class Penguin
  attr_accessor :name, :gender, :age
 
  def initialize
    @distance_to_finish = 100
    @opponent_distance_to_finish = 100
 
    puts "What do you want your penguin named?"
    name = gets.chomp
 
    puts "Is it male or female?"
    gender = gets.chomp
 
    x = rand(30)
    puts "It's age is #{x}"
 
    if x < 10
      puts "That is quite young for a penguin"
    elsif x < 20
      puts "That is a middle aged penguin"
    else
      puts "That is an old penguin"
    end
 
    start
  end
 
  def start
   puts "Here are the rules:"
   puts "You can either waddle, dive, or slide your way towards the finish. If you choose to *dive* you will move anywhere from 5 to 15 yards forward. If you choose to *waddle* you will move anywhere from 8 to 12 yards forward. If you choose to *slide* you will move anywhere from 1 to 20 yards forward. Sliding is the riskiest. Waddling is the safest. Diving is inbetween.
   "
 
   puts "Are you ready to start the race?"
      ans = gets.chomp
      if ans.downcase == "yes"
        puts "3...2...1...GO!"
        choice
      elsif ans.downcase == "no"
        puts "okay :("
          exit
      else
        puts "Please say yes"
        start
      end
   end
 
  def choice
    puts "Do you want it to waddle, dive or slide?"
      command = gets.chomp
      if command.downcase == "waddle"
        waddle
      elsif command.downcase == "dive"
        dive
      elsif command.downcase == "slide"
        slide
      else
        puts "Please type waddle, dive or slide..."
        choice
      end
   end
 
  def waddle
    puts "***************************************************"
    waddle_array = ["Your penguin awkwardly waddled forwards in a quick burst.", "Your penguin hopped on a surfboard and moved quickly ahead."]
    puts waddle_array.sample
    @distance_to_finish -= rand(8..12)
    @opponent_distance_to_finish -= rand(5..15)
 
    if @distance_to_finish <= 0
      finish_race_win
    elsif @opponent_distance_to_finish <= 0
      finish_race_lose
    end
 
    puts "Only #{@distance_to_finish} yards to the finish line left. Your dolphin opponent has #{@opponent_distance_to_finish} yards left."
 
    choice
 
  end
 
  def dive
    puts "***************************************************"
    dive_array = ["Your penguin climbed up a nearby iceburg and dove deeply forwards.", "In a risky move your penguin did an awesome cannonball and quickly approached the finish line."]
    puts dive_array.sample
    @distance_to_finish -= rand(5..15)
    @opponent_distance_to_finish -= rand(5..15)
 
    if @distance_to_finish <= 0
      finish_race_win
    elsif @opponent_distance_to_finish <= 0
      finish_race_lose
    end
 
    puts "Only #{@distance_to_finish} yards to the finish line left. Your dolphin opponent has #{@opponent_distance_to_finish} yards left."
 
    choice
  end
 
  def slide
    puts "***************************************************"
    slide_array = ["Your penguin hopped up on to the ice and slid towards the finish.", "Your penguin slid quickly ahead."]
    puts slide_array.sample
    @distance_to_finish -= rand(1..20)
    @opponent_distance_to_finish -= rand(5..15)
 
    if @distance_to_finish <= 0
      finish_race_win
    elsif @opponent_distance_to_finish <= 0
      finish_race_lose
    end
 
    puts "Only #{@distance_to_finish} yards to the finish line left. Your dolphin opponent has #{@opponent_distance_to_finish} yards left."
 
    choice
  end
 
  def finish_race_win
  puts "and... The race is over. YOU WON!!! Penguins for life!!"
  exit
  end
 
  def finish_race_lose
  puts "and... The race is over. You lost to a dolphin! HAHAH!"
  exit
  end
end
 
##################Start_of_Program#####################################
 
 
puts "***************************************************"
puts "It's a race between dolphins and penguins to decide which is better. Do you want to be a dolphin or a penguin?"
 
def begin_race
  answer = gets.chomp
  if answer.downcase == "dolphin"
    Dolphin.new
  elsif answer.downcase == "penguin"
    Penguin.new
  else
    puts "Please type either dolphin or penguin..."
    begin_race
  end
end
 
begin_race
