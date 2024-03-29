# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_coordinates/version'

Gem::Specification.new do |spec|
  spec.name          = "google_coordinates"
  spec.version       = GoogleCoordinates::VERSION
  spec.authors       = ["Benoit LeBlanc"]
  spec.email         = ["ben.leblanc@gmail.com"]
  spec.summary       = %q{Using Google Coordinate from Ruby}
  spec.description   = %q{A wrapper for the Google Coordinate API using HTTPARTY}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-plus"  
  spec.add_development_dependency "pry-remote"
  spec.add_dependency "httparty", "0.13.1"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency 'webmock', '~> 1.18.0'
  spec.add_development_dependency 'vcr',     '~> 2.9.2'
          
end
