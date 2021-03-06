
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cas/version'

Gem::Specification.new do |spec|
  spec.name          = 'cas'
  spec.version       = Cas::VERSION
  spec.authors       = ['Bedelbaev Zulkar']
  spec.email         = ['bedelbaev@gmail.com']

  spec.summary       = 'Central Authentication System in Ruby'
  spec.description   = 'Service-Oriented Architecture for Authentication in Ruby'
  spec.homepage      = 'https://github.com/zismailov/cas'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16.a'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
