# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'currency_units/version'

Gem::Specification.new do |spec|
  spec.name          = "currency_units"
  spec.version       = CurrencyUnits::VERSION
  spec.authors       = ["Sayuj Othayoth"]
  spec.email         = ["sayuj@othayoth.in"]

  spec.summary       = %q{A ruby gem to convert currencies to different units.}
  spec.description   = %q{A ruby gem to convert currencies to different units.}
  spec.homepage      = "https://github.com/sayuj/currency_units"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
