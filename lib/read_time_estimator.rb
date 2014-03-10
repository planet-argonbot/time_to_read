require "read_time_estimator/version"

module ReadTimeEstimator
  module String
    def test
      "yo"
    end
  end
end

class String
  include ReadTimeEstimator::String
end
