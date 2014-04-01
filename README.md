# ReadTimeEstimator

Estimates the time to read a string of text. The gem assumes a reading speed of 250 words per minute.

## Installation

Add this line to your application's Gemfile:

    gem 'read_time_estimator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install read_time_estimator

## Usage

To use the gem on a string, call `read_time_words` on it.

Example:
`some_string.read_time_words`

will output
`2 minutes and 30 seconds to read`

## Contributing

1. Fork it ( http://github.com/<my-github-username>/read_time_estimator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
