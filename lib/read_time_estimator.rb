require "read_time_estimator/version"

module ReadTimeEstimator
  module String
    def minutes_to_read
      self.split(' ').count/250.0
    end

    def read_time_words
      time = minutes_to_read
      if time/60 >= 1
        words = read_time_over_hour(time)
      else
        words = minutes_in_words(time)
        seconds = time%1
        if seconds != 0.0
          words << seconds_in_words(seconds)
        end
      end
      words << " to read"
    end

    def read_time_over_hour(time)
      hours = (time/60).to_i
      hours_in_words(hours)
    end

    def hours_in_words(hours)
      "#{hours} hour"
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
