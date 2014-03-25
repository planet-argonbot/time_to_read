require "read_time_estimator/version"

module ReadTimeEstimator
  module String
    def minutes_to_read
      self.split(' ').count/250.0
    end

    def read_time_words
      time = minutes_to_read
      seconds = time%1
      words = "#{minutes_in_words(time)} minutes"
      if seconds != 0.0
        words << " and #{seconds_in_words(seconds)} seconds"
      end
      words << " to read"
    end

    def seconds_in_words(seconds)
      (seconds * 60).to_i
    end

    def minutes_in_words(time)
      time.floor
    end
  end
end

class String
  include ReadTimeEstimator::String
end
