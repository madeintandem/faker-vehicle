require "yaml"
require "faker"

module Faker
  class Vehicle < Base
    VIN_REGEX = /^[A-Z0-9]{3}[A-Z0-9]{5}[A-Z0-9]{1}[A-Z0-9]{1}[A-Z0-0]{1}[A-Z0-9]{1}\d{5}$/
    MILEAGE_MIN = 10_000
    MILEAGE_MAX = 90_000
    YAML_PATH = File.expand_path('../vehicle/en-vehicle.yml', __FILE__)
    VEHICLE_YAML = ::YAML.load(File.read(YAML_PATH))

    
    class << self
      def vin
        self.regexify(VIN_REGEX)
      end

      def mileage
        rand(MILEAGE_MIN..MILEAGE_MAX)
      end

      def year 
        rand(2005..::Time.now.year)
      end

      def make
        VEHICLE_YAML["makes"].sample
      end

      def model(make = "")
        return VEHICLE_YAML["models_by_make"].to_a.sample[1].sample if make == ""

        VEHICLE_YAML["models_by_make"]["#{make}"].sample
      end

      def make_and_model
        m = make
        "#{m} #{model(m)}"
      end

      def style
        VEHICLE_YAML["styles"].sample
      end

      def color
        VEHICLE_YAML["colors"].sample
      end

      def transmission
        VEHICLE_YAML["transmissions"].sample
      end

      def drive_type
        VEHICLE_YAML["drive_types"].sample
      end

      def fuel_type
        VEHICLE_YAML["fuel_types"].sample
      end

      def door_count
        "#{VEHICLE_YAML["door_count"].sample} #{VEHICLE_YAML["door"]}"
      end

      def car_type
        VEHICLE_YAML["car_types"].sample
      end

      def engine
        "#{VEHICLE_YAML["engine_size"].sample} #{VEHICLE_YAML["cylinder_engine"]}"
      end

      alias :engine_size :engine

      def car_options
        rand(5...10).times.map { VEHICLE_YAML["car_options"].sample }
      end

      def standard_specs
        rand(5...10).times.map { VEHICLE_YAML["standard_specs"].sample }
      end
    end
  end
end

require "faker/vehicle/version"
