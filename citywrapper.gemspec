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
  spec.description   = 'Longer description goes here'
  spec.homepage      = 'https://www.github.com/joesouthan/citywrapper'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = 'TODO: Set to 'http://mygemserver.com''
  # else
  #   raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'vcr', '~> 3'
  spec.add_development_dependency 'webmock', '~> 2.1'
  spec.add_development_dependency 'pry', '~> 0.10'
end
