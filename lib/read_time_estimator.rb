require "read_time_estimator/version"

module ReadTimeEstimator
  module String
    def minutes_to_read
      self.split(' ').count/250.0
    end

    def read_time_words
      time = minutes_to_read
      words = []
      if read_time_hours(time)
        words << read_time_hours(time)
        time = time % 60
      end
      if read_time_minutes(time)
        words << read_time_minutes(time)
        time = time % 1
      end
      if read_time_seconds(time)
        words << read_time_seconds(time)
      end
      words << "1 second" if words.empty?
      words = words.reverse
      words.insert(2, ", ") if words[2]
      words.insert(1, " and ") if words[1]
      words = words.reverse
      words.join + " to read"
    end

    def read_time_hours(time)
      hours = (time/60).to_i
      hours >= 1 ? hours_in_words(hours) : nil
    end

    def hours_in_words(hours)
      hours == 1 ? "#{hours} hour" : "#{hours} hours"
    end

    def read_time_minutes(time)
      minutes = time.to_i
      minutes > 1 ? minutes_in_words(minutes) : nil
    end

    def minutes_in_words(minutes)
      minutes == 1 ? "#{minutes} minute" : "#{minutes} minutes"
    end

    def read_time_seconds(time)
      seconds = (time * 60).to_i
      seconds > 1 ? seconds_in_words(seconds) : nil
    end

    def seconds_in_words(seconds)
      seconds == 1 ? "#{seconds} second" : "#{seconds} seconds"
    end
  end
end

class String
  include ReadTimeEstimator::String
end
