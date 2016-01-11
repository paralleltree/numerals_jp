# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'numerals_jp/version'

Gem::Specification.new do |spec|
  spec.name          = "numerals_jp"
  spec.version       = NumeralsJp::VERSION
  spec.authors       = ["paralleltree"]
  spec.email         = ["paralleltree@outlook.com"]

  spec.summary       = %q{A numerals library for japanese.}
  spec.description   = %q{Number conversion between arabic numerals and japanese numerals.}
  spec.homepage      = "https://github.com/paralleltree/numerals_jp"
  spec.license       = "MIT"
  spec.required_ruby_version = '~> 2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
