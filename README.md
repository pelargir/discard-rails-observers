# Discard::Rails::Observers

Makes the discard gem's callbacks available in Rails observers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'discard-rails-observers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install discard-rails-observers

## Usage

Use the discard callbacks in your Rails observers like you normally would:

```ruby
class MyObserver < ActiveRecord::Observer
    def before_discard(my_obj)
      # do something
    end

    # Other callbacks available:
    #   around_discard
    #   after_discard
    #   before_undiscard
    #   around_undiscard
    #   after_undiscard
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pelargir/discard-rails-observers.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
