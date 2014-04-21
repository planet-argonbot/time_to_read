# TimeToRead

Estimates the time to read a string of text. The gem assumes a reading speed of 250 words per minute.

## Installation

Add this line to your application's Gemfile:

    gem 'time_to_read'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install time_to_read

## Usage

To use the gem on a string, call `time_to_read` on it passing through the desired reading speed as an argument.

Example:
`some_string.read_time_words(250)`

will output
`2 minutes`

Note: Times are purposly fuzzy stating Less than a minute, and only incrementing at minute increments.  Please take with a grain of salt :)

## Contributing

1. Fork it ( http://github.com/<my-github-username>/time_to_read/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
