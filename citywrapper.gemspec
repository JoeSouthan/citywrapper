# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
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
  spec.required_ruby_version = '>= 2.4'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'fuubar', '~> 2.2'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'relaxed-rubocop'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.8'
  spec.add_development_dependency 'simplecov', '~> 0.15'
  spec.add_development_dependency 'vcr', '~> 6'
  spec.add_development_dependency 'webmock', '~> 3.1'
end
