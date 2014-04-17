# require "read_time_estimator/version"

module ReadTimeEstimator
  module String
    def minutes_to_read
      self.split(' ').count/250.0
    end

    def read_time_words
      time = minutes_to_read
      answer = ''
      if time > 60
        puts "time is more than an hour"
        hours = read_time_hours(time).to_s
        minutes = read_time_minutes(time - hours.to_i * 60).to_s
        answer = hours + minutes
      elsif time < 60 && time > 1
        puts 'Time is less than hour but more than minute'
        minutes = read_time_minutes(time).to_s
        answer = minutes
      else
        puts "Time is less than 1..."
        answer = 'Less than a minute'
      end

      answer + "to read"
    end

    def read_time_hours(time)
      hours = (time / 60).to_i
      hours_in_words(hours)
    end

    def hours_in_words(hours)
      hours == 1 ? "#{hours} hour " : "#{hours} hours "
    end

    def read_time_minutes(time)
      minutes = time.to_i
      minutes_in_words(minutes)
    end

    def minutes_in_words(minutes)
      minutes == 1 ? "#{minutes} minute " : "#{minutes} minutes "
    end
  end
end

class String
  include ReadTimeEstimator::String
end
