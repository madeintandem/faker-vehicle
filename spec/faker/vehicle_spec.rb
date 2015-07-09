require 'spec_helper'

describe Faker::Vehicle do
  subject { Faker::Vehicle }

  it 'has a version number' do
    expect(Faker::Vehicle::VERSION).not_to be nil
  end

  it "generates a vin" do
    expect(subject.vin).to match(Faker::Vehicle::VIN_REGEX)
  end

  it "generates mileage" do
    100.times do
      mileage = subject.mileage
      expect(mileage).to be >= Faker::Vehicle::MILEAGE_MIN
      expect(mileage).to be < Faker::Vehicle::MILEAGE_MAX
    end
  end

  it "generates a year from 2005" do
    15.times do
      year = subject.year
      expect(year).to be >= 2005
      expect(year).to be <= ::Time.now.year
    end
  end

  it "generates a make" do
    expect(subject::VEHICLE_YAML["makes"]).to include(subject.make)
  end

  it "generates a model" do
    expect(subject::VEHICLE_YAML["models_by_make"].to_a.flatten).to include(subject.model)
  end

  it "generates a model based on a make" do
    expect(subject::VEHICLE_YAML["models_by_make"]["Honda"]).to include(subject.model("Honda"))
  end

  it "generates a make and a model" do
    make_model = subject.make_and_model
    expect(subject::VEHICLE_YAML["models_by_make"].to_a.flatten).to include(make_model.split[0], make_model.split[1])
  end

  it "generates a style" do
    expect(subject::VEHICLE_YAML["styles"]).to include(subject.style)
  end

  it "generates a color" do
    expect(subject::VEHICLE_YAML["colors"]).to include(subject.color)
  end

  it "generates a transmission type" do
    expect(subject::VEHICLE_YAML["transmissions"]).to include(subject.transmission)
  end

  it "generates a drive type" do
    expect(subject::VEHICLE_YAML["drive_types"]).to include(subject.drive_type)
  end

  it "generates a fuel type" do
    expect(subject::VEHICLE_YAML["fuel_types"]).to include(subject.fuel_type)
  end

  it "generates a door count" do
    expect(subject.door_count).to match(/\d Door/)
  end

  it "generates a car type" do
    expect(subject::VEHICLE_YAML["car_types"]).to include(subject.car_type)
  end

  it "generates an engine size" do
    expect(subject.engine).to match(/\d Cylinder Engine/)
    expect(subject.engine_size).to match(/\d Cylinder Engine/)
  end

  it "generates car options" do
    car_options = subject.car_options
    10.times do
      expect(car_options.length).to be >= 5
      expect(car_options.length).to be < 10
    end
  end

  it "generates standard specs" do
    standard_specs = subject.standard_specs
    10.times do
      expect(standard_specs.length).to be >= 5
      expect(standard_specs.length).to be < 10
    end
  end
end
