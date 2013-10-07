require "spec_helper"

describe NameScorer do

  it "should exist" do
    expect(NameScorer).not_to be_nil
  end

  let(:name_scorer) {NameScorer.new("names.txt")}
  let(:list_of_names) {NameScorer.new("names.txt").file}

  describe "#initialize" do
    it "should take in a file" do
      expect(name_scorer).not_to be_nil
    end

    it "should store the file in an accessible instance variable" do
      expect(name_scorer).to respond_to(:file)
    end
  end

  describe "@file" do
    it "should store the file as an array of strings" do
      expect(list_of_names.class).to eq(Array)
      expect(list_of_names.first.class).to eq(String)
    end

    it "should seperate out the file to be a list of names sorted alphabetically" do
      expect(list_of_names.first.include? "AARON").to eq(true)
      expect(list_of_names.last.include? "ZULMA").to eq(true)
    end
  end

  describe "#letter_value_hash" do
    it "should exist" do
      expect(name_scorer).to respond_to(:letter_value_hash)
    end

    it "should return a hash" do
      expect(name_scorer.letter_value_hash.class).to eq(Hash)
    end

    it "should hold the values A > Z and 1 > 26 as key value pairs" do
      expect(name_scorer.letter_value_hash["A"]).to eq(1)
      expect(name_scorer.letter_value_hash["E"]).to eq(5)
      expect(name_scorer.letter_value_hash["Z"]).to eq(26)
    end
  end

  describe "#name_value_array" do
    it "should exist" do
      expect(name_scorer).to respond_to(:name_value_array)
    end

    it "should be an array of integer values corresponding to the list of names" do
      expect(name_scorer.name_value_array.first).to eq(49)
      expect(name_scorer.name_value_array.last).to eq(73*5163)
    end
  end

  describe "#sum_of_name_scores" do
    it "should exist" do
      expect(name_scorer).to respond_to(:sum_of_name_scores)
    end

    it "should return a number" do
      expect(name_scorer.sum_of_name_scores.class).to eq(Fixnum)
    end

    it "shoudld give the correct answer" do
      expect(name_scorer.sum_of_name_scores).to eq(871198282)
    end
  end
end
