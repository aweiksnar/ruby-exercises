#Robot - Jumpstart warmup #6

class Robot
 
  attr_accessor :name, :mac_address
 
  def initialize
    @name = name_robot
    @mac_address = rand(100_000_000_000_000..281_474_976_710_656)
  end
 
  def letter_array
    ("A".."Z").map {|l| l.upcase}
  end
 
  def number_array
    ("1".."9").map {|n| n.upcase}
  end
 
  def name_robot
    "#{letter_array.sample}#{letter_array.sample}#{number_array.sample}#{number_array.sample}#{number_array.sample}"
  end
 
  def reset
    @name = name_robot
  end
 
end
 
puts "Robot #1"
a = Robot.new
p a.name
p a.name
p a.name
p a.mac_address
 
puts "Robot #2"
b = Robot.new
p b.name
p b.name
p b.name
b.reset
p b.name
p b.mac_address
