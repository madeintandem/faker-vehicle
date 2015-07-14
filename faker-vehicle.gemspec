# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faker/vehicle/version'

Gem::Specification.new do |spec|
  spec.name          = "faker-vehicle"
  spec.version       = Faker::Vehicle::VERSION
  spec.authors       = ["Eryan Cobham"]
  spec.email         = ["eryan@devmynd.com"]

  spec.summary       = %q{Faker additions that generates automobile data}
  spec.homepage      = "https://github.com/devmynd/faker-vehicle"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_dependency "faker", "~> 1.4" 
end
