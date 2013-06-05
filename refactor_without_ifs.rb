#ChicagoRuby Hack Night - Refactor without ifs 


#problem - refactor without if statements

def process(input)
  if input == "q"
    puts "Goodbye"
  elsif input == "tweet"
    puts "tweeting"
  elsif input == "dm"
    puts "direct messaging"
  elsif input == "help"
    puts "helping"
  end
end

#solution

def process(input)
h = {"q" => "Goodbye", "tweet" => "tweeting", "dm" => "direct messaging", "help" => "helping"}
puts h[input]
end

process("q") #=> "Goodbye"
