# require "time_to_read/version"

module TimeToRead
  module String

    def time_to_read(wpm)
      time = minutes_to_read(wpm)
      if time >= 60
        hours = read_time_hours(time).to_s
        minutes = read_time_minutes(time - hours.to_i * 60).to_s
        answer = hours + minutes
      elsif time < 60 && time > 1
        minutes = read_time_minutes(time).to_s
        answer = minutes
      else
        answer = 'Less than a minute'
      end

      answer.strip
    end

    private

    def minutes_to_read(wpm)
      self.split(' ').count/wpm.to_i
    end

    def read_time_hours(time)
      hours = (time / 60).to_i
      hours_in_words(hours)
    end

    def hours_in_words(hours)
      hours == 1 ? "#{hours} hour" : "#{hours} hours"
    end

    def read_time_minutes(time)
      minutes = time.to_i
      minutes_in_words(minutes) unless minutes == 0
    end

    def minutes_in_words(minutes)
      minutes == 1 ? " #{minutes} minute" : " #{minutes} minutes"
    end
  end
end

class String
  include TimeToRead::String
end

