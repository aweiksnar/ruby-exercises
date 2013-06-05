#Bob - Lackadaisical teenager - Jumpstart Lab Warmup #4 


class Bob
  def initialize
    puts "Bob is a teenager with limited responses. He will answer your questions, but if you yell or don't say anything he may get defensive. Don't forget to say 'bye' when you are done talking to bob"
    ask
  end
 
  def ask
    puts "Ask bob a question"
    @question = gets.chomp
    get_response
  end
 
  def get_response
    puts "***********************************"
    if @question == "bye" || @question == "by"
      exit
    elsif @question == @question.upcase
      puts "Woah, chill out!"
      ask
    elsif @question.split(//).last == "?"
      puts "Sure."
      ask
    elsif @question.split.last != "?"
      puts "Whatever."
      ask
    elsif @question == ""
      puts "Fine. Be that way!"
    end
  end
end
 
Bob.new
