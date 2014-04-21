# require "time_to_read/version"

module TimeToRead
  module String

    def time_to_read(words_per_minute)
      time = minutes_to_read(words_per_minute)
      if time >= 60
        hours = read_time_hours(time).to_s
        minutes = read_time_minutes(time - hours.to_i * 60).to_s
        answer = '~' + hours + minutes
      elsif time < 60 && time > 1
        minutes = read_time_minutes(time).to_s
        answer = '~' + minutes
      else
        answer = 'Less than a minute'
      end

      answer.strip
    end

    private

    def minutes_to_read(words_per_minute)
      self.split(' ').count/words_per_minute.to_i
    end

    def read_time_hours(time)
      hours = (time / 60).to_i
      time_in_words(hours, 'hour')
    end

    def read_time_minutes(time)
      minutes = time.to_i
      time_in_words(minutes, 'minute') unless minutes == 0
    end

    def time_in_words(time_value, time_context)
      time_context.to_s
      time_value == 1 ? " #{time_value} #{time_context}" : " #{time_value} #{time_context}s"
    end
  end
end

class String
  include TimeToRead::String
end

