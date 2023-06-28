# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid/observers/version'

Gem::Specification.new do |spec|
  spec.name          = "mongoid-observers"
  spec.version       = Mongoid::Observers::VERSION
  spec.authors       = ["Chamnap Chhorn", "Richard Brooke", "Diganta Mandal"]
  spec.email         = ["chamnapchhorn@gmail.com", "richard.brooke@rightspend.com", "diganta@rightspend.com"]
  spec.summary       = %q{Mongoid observer (removed in Mongoid 4.0)}
  spec.description   = %q{Mongoid::Observer removed from Mongoid 4.0}
  spec.homepage      = "https://github.com/RightSpend/mongoid-observers"
  spec.license       = "MIT"

  spec.files         = Dir["{gemfiles,lib,spec}/**/*", "LICENSE.txt", "Rakefile", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.7'

  spec.add_runtime_dependency 'mongoid', '~> 8.0'

  spec.add_development_dependency 'rspec',            '~> 3.5.0'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'guard-rspec',      '~> 4.7.3'
  spec.add_development_dependency 'pry',              '~> 0.14.2'
  spec.add_development_dependency 'ammeter',          '~> 1.1.4'
  spec.add_development_dependency 'bundler'
end
