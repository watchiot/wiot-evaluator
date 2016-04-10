# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wiot/parser/version'

Gem::Specification.new do |spec|
  spec.name          = "wiot-parser"
  spec.version       = Wiot::Parser::VERSION
  spec.authors       = ["gorums"]
  spec.email         = ["acksecurity@hotmail.com"]

  spec.summary       = %q{Yaml configuration parser.}
  spec.description   = %q{This gem parse the watchiot yaml configuration.}
  spec.homepage      = "http://www.watchiot.org"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "antlr3", "~> 1.10"
end
