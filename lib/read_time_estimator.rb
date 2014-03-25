require "read_time_estimator/version"

module ReadTimeEstimator
  module String
    def minutes_to_read
      self.split(' ').count/250.0
    end
  end
end

class String
  include ReadTimeEstimator::String
end
