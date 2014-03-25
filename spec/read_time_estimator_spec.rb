require "read_time_estimator"
require 'rspec'

describe "ReadTimeEstimator" do
  describe "minutes_to_read" do
    it "should output an amount of time given the length of a word" do
      text = "word " * 250
      expect(text.minutes_to_read).to eql 1.0
    end
  end

  describe "read_time_words" do
    it "returns the reading time in phrase form when there is an even number of minutes" do
      text = "word " * 500
      expect(text.read_time_words).to eql "2 minutes to read"
    end

    it "returns the reading time in phrase form when there are seconds" do
      text = "word " * 625
      expect(text.read_time_words).to eql "2 minutes and 30 seconds to read"
    end

    it "returns the reading time in phrase form when read time is an hour" do
      text = "word " * 15000
      expect(text.read_time_words).to eql "1 hour to read"
    end

    it "returns the reading time in phrase form when read time include an hour, minutes, and seconds" do
      text = "word " * 22550
      expect(text.read_time_words).to eql "1 hour 30 minutes and 12 seconds"
    end
  end

  describe "hours_in_words" do
    it "correctly pluralizes 'hour' when hours to read is greater than one" do
      text = "word " * 30000
      expect(text.read_time_words).to eql "2 hours to read"
    end
  end
end
