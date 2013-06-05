class Scrabble
 
  def self.split_word(word)
    word.split(//)
  end
 
  def self.letter_value_hash
    {"a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, "r" => 1, "s" => 1,"t" => 1, "d" => 2, "g" => 2, "b" => 3, "c" => 3, "m" => 3, "p" => 3, "f" => 4, "h" => 4,"v" => 4,"w" => 4,"y" => 4, "k" => 5, "j" => 8, "q" => 10, "z" => 10}
  end
 
  def self.score(word)
    count = 0
    split_word(word).each do |letter|
      count += letter_value_hash[letter.downcase]
    end
    return count
  end
 
end
 
Scrabble.score("cabbage") #=> 14
