# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clearbit/version'

Gem::Specification.new do |spec|
  spec.name          = "clearbit"
  spec.version       = Clearbit::VERSION
  spec.authors       = ["Alex MacCaw"]
  spec.email         = ["alex@clearbit.com"]
  spec.description   = %q{API client for clearbit.com}
  spec.summary       = %q{API client for clearbit.com}
  spec.homepage      = "https://github.com/maccman/clearbit-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_dependency 'nestful', '~> 1.0.7'
end
