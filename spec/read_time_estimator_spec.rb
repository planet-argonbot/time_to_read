require "read_time_estimator"
require 'rspec'

describe "ReadTimeEstimator" do
  describe "read_time" do
    it "should break the string into an array of words" do
      expect("Big old test string".read_time).to eql ["Big", "old", "test", "string"]
    end
  end

  describe "time_per_word" do
    it "should output an amount of time given the length of a word" do
      expect("supercalifragilisticexpialidocious".time_per_word).to eql "02:10"
    end
  end
end
