# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tareek/version'

Gem::Specification.new do |spec|
  spec.name          = "tareek"
  spec.version       = Tareek::VERSION
  spec.authors = ["Nikhil Nanjappa", "Ashish Upadhyay", "Ankur Gera", "Gourav Tiwari", "Hrishita Vaish"]
  spec.email = ["nikhil.nanjappa@tcs.com", "ashish.upadhyaye@gmail.com", "ankurgera@gmail.com", "gouravtiwari21@gmail.com", "vaish.hrishita@tcs.com"]
  spec.summary       = %q{Humanized Dates for use !}
  spec.description   = %q{It gives you dates like, middle of the month, middle of next month etc.}
  spec.homepage      = "https://github.com/gemathon-warriors/tareek"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "activesupport",'>= 2.3.16'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'coveralls'
end
