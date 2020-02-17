# Hairsalon

This gem is responsible for providing a way for customers of a hair salon to be able to see available services and then choose to book an appointment. The services arre broken down into 4 main categories.  They are:

Hair Services
Color Services
Hair Treatment Services
Makeup

This gem makes use of data that has been scraped from a local salon.  As users make a selection from the list of services above, they are presented with a 2nd list that details the services that are available under the seected category.  Customers are then given the option to book an appointment, make a new selection, or exit the application. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hairsalon'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hairsalon

## Usage

To use this gem, 
1. Type bin/run in your terminal. 

You will be presented with a brief welcome message and asked to make a selection from the list of main categories.

2. Make a selection, by number, from the list of presented catrgories

The gem will present a list of available services under the selected cateory.  The available services will be accompanied by a list of prices for each service.  Note that, depending on your selection, some services may require a consultation before pricing is made available.

3. Choose to book an appointment, make a new selection, or exit the application

You may choose to book an appointment based upon the available services list, make a new selection, which will give you a new list of available services,or exit the application

When you book an appointment, the gem will present a Thank you notice and end the program.
When you make a new selection, you will be presented with the initiail categories list from which to choose.
When you exit the application, you will receive a Thank you message and the program will exit.


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hairsalon. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/hairsalon/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hairsalon project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/hairsalon/blob/master/CODE_OF_CONDUCT.md).
