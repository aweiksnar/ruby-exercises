#JumpstartLab warmup-exercise #31

require "rspec"

class AnagramDetector
  attr_accessor :test_word, :test_array

  def initialize(test_word, test_array)
    @test_word  = test_word
    @test_array = test_array
  end

  def return_anagrams
    downcase_test_word
    downcase_test_array
    delete_word_from_test_array_if_it_is_not_an_anagram
  end

  def downcase_test_word
    @test_word = test_word.downcase
  end

  def downcase_test_array
    @test_array.map! {|word| word = word.downcase}
  end

  def delete_word_from_test_array_if_it_is_not_an_anagram
    @test_array.delete_if {|word| word.each_char.sort != @test_word.each_char.sort}
  end

end

describe "AnagramDetector" do

  RSpec.configure do |config|
    config.color_enabled = true
  end

  it "should exist" do
    expect(AnagramDetector.is_a? Class).to eq(true)
  end

  before :each do
    @anagram_detector = AnagramDetector.new("listen", %w(enlists google inlets banana))
  end

  it "should take in a test word and array of words upon creation" do
    expect(@anagram_detector).not_to be_nil
  end

  it "should respond to the test_word attribute" do
    expect(@anagram_detector).to respond_to(:test_word)
  end

  it "should respond to the test_array attribute" do
    expect(@anagram_detector).to respond_to(:test_array)
  end

  it "should have a method downcase_test_word" do
    expect(@anagram_detector).to respond_to(:downcase_test_word)
  end

  it "should downcase the test word via downcase_test_word" do
    @anagram_detector_with_capalized_test_word = AnagramDetector.new("Word", %w(dowr, door))
    expect(@anagram_detector_with_capalized_test_word.downcase_test_word).to eq("word")
  end

  it "should have a method downcase_test_array" do
    expect(@anagram_detector).to respond_to(:downcase_test_array)
  end

  it "should have a downcase all the words in the test array via downcase_test_array" do
    @anagram_detector_with_capalized_test_array = AnagramDetector.new("word", %w(Dowr, doOr))
    expect(@anagram_detector_with_capalized_test_array.downcase_test_array).to eq(%w(dowr, door))
  end

  it "should have a method called delete_word_if_it_is_not_an_anagram" do
    expect(@anagram_detector).to respond_to(:delete_word_from_test_array_if_it_is_not_an_anagram)
  end

  it "should remove_words that are not anagrams via delete_word_if_it_is_not_an_anagram" do
    expect(@anagram_detector.delete_word_from_test_array_if_it_is_not_an_anagram).to eq(["inlets"])
  end

  it "should have a method return anagrams" do
    expect(@anagram_detector).to respond_to(:return_anagrams)
  end

  it "should have method return_anagrams that calls the appropriate methods and returns the matching anagrams" do
    @difficult_anagram_detector = AnagramDetector.new("Word", %w(Dowr doOr roDw))
    expect(@difficult_anagram_detector.return_anagrams).to eq(["dowr", "rodw"])
  end
end

anagram_detector = AnagramDetector.new("listen", %w(enlists google inlets banana)).return_anagrams
p anagram_detector # => ["inlets"]
