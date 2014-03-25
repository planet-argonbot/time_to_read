require "read_time_estimator"
require 'rspec'

describe "ReadTimeEstimator" do
  describe "read_time" do
      it "returns the reading time in phrase form" do
        text = "word " * 250
        expect(text.read_time).to eql "1.0 minutes to read"
      end
  end

  describe "minutes_to_read" do
    it "should output an amount of time given the length of a word" do
      text = "word " * 250
      expect(text.minutes_to_read.to eql 1.0
    end
  end
end
