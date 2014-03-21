require "read_time_estimator/version"

module ReadTimeEstimator
  module String
    def read_time
      "yo"
    end

    def time_per_word
    end
  end
end

class String
  include ReadTimeEstimator::String
end
