require "read_time_estimator"
require 'rspec'

describe "ReadTimeEstimator" do
  describe "read_time" do
      it "returns the reading time in phrase form" do
        text = "word " * 250
        expect(text.read_time).to eql "1.0 minutes to read"
      end
  end

  describe "time_per_word" do
    it "should output an amount of time given the length of a word" do
      expect("supercalifragilisticexpialidocious".time_per_word).to eql "02:10"
    end
  end
end
