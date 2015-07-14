# Faker::Vehicle

Faker::Vehicle is a small extension to the [Faker gem](https://github.com/stympy/faker) that adds additional methods for generating fake vehicle data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faker-vehicle'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faker-vehicle

## Usage

###Faker::Vehicle
-----------------

```ruby
Faker::Vehicle.vin #=> "CTKR523Z00K855079"

Faker::Vehicle.mileage #=> 40796

Faker::Vehicle.year #=> 2009

Faker::Vehicle.make #=> "Audi"

Faker::Vehicle.model #=> "F150"

Faker::Vehicle.model("Audi") #=> "A4"

Faker::Vehicle.make_and_model #=> "Honda CR-V"

Faker::Vehicle.style #=> "ESi"

Faker::Vehicle.color #=> "Red"

Faker::Vehicle.transmission #=> "CVT"

Faker::Vehicle.drive_type #=> "AWD"

Faker::Vehicle.fuel_type #=> "Compressed Natural Gas"

Faker::Vehicle.door_count #=> "4 Door"

Faker::Vehicle.car_type #=> "Sedan"

Faker::Vehicle.engine #=> "8 Cylinder Engine"

Faker::Vehicle.engine_size #=> "8 Cylinder Engine"

Faker::Vehicle.car_options #=> ["Fog Lights", "Airbag: Driver", "Power Windows", "Airbag: Passenger", "Rear Window Defroster", "Power Steering", "Tow Package", "Moonroof/Sunroof"]

Faker::Vehicle.standard_specs #=> ["Full-time all-wheel drive", "Compact spare tire", "Traveler/mini trip computer", "Brake assist", "Body color door handles", "Dana 44/226mm rear axle", "Front/rear aluminum multi-link double joint suspension w/coil springs"]


```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/faker-vehicle. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

