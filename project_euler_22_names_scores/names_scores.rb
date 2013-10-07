# project euler #22 : Names scores

class NameScorer
  attr_accessor :file

  def initialize(file)
    @file = file_split_into_array_of_names("names.txt")
  end

  def letter_value_hash
    Hash[[*"A".."Z"].zip [*1..26]]
  end

  def name_value_array
    @file.each_with_index.map {|name, index| name = name_value(name, index) }
  end

  def sum_of_name_scores
    name_value_array.inject {|sum, value| sum + value}
  end

  private

  def file_split_into_array_of_names(file)
    File.read(file).split(",").sort
  end

  def name_value(name, index)
    (name.scan(/[A-Z]/).inject(0) {|sum, letter| sum += letter_value_hash[letter.upcase]}) * (index+1)
  end
end

p NameScorer.new("names.txt").sum_of_name_scores # => 871198282
