# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'citywrapper/version'

Gem::Specification.new do |spec|
  spec.name          = 'citywrapper'
  spec.version       = Citywrapper::VERSION
  spec.authors       = ['Joseph Southan']
  spec.email         = ['joe+github@sthn.io']

  spec.summary       = 'Wraps the Citymapper API'
  spec.description   = 'Simple wrapper around the Citymapper API'
  spec.homepage      = 'https://www.github.com/joesouthan/citywrapper'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'vcr', '~> 4'
  spec.add_development_dependency 'webmock', '~> 3.1'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'fuubar', '~> 2.2'
  spec.add_development_dependency 'simplecov', '~> 0.15'
end
