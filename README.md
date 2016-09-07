# Citywrapper
[![Build Status](https://travis-ci.org/JoeSouthan/citywrapper.svg?branch=master)](https://travis-ci.org/JoeSouthan/citywrapper)
#### WIP

TODO:
- Better documentation

A very light wrapper around the [Citymapper API](https://citymapper.3scale.net/).

This is in very early development, the Ruby API may change drastically.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'citywrapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install citywrapper

## Usage

Set your API key

```ruby
Citywrapper.configure do |c|
  c.api_key = 'API_KEY'
end

```

Try making a request:

```ruby
t = Citywrapper::TravelTime.between(
  start_coordinates: [51.525246, 0.084672],
  end_coordinates: [51.559098, 0.074503],
  time: Time.new(2016, 9, 7, 21, 00),
  time_type: :arrival,
)

t.travel_time_minutes # 43

```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joesouthan/citywrapper.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

