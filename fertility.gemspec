# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fertility/version'

Gem::Specification.new do |spec|
  spec.name          = "fertility"
  spec.version       = Fertility::VERSION
  spec.authors       = ["Takafumi Asano"]
  spec.email         = ["cariandrum22@gmail.com"]
  spec.summary       = %q{Investment analysis tools}
  spec.description   = %q{Investment analysis tools}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1.0"
end
