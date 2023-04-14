# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid/observers/version'

Gem::Specification.new do |spec|
  spec.name          = "mongoid-observers"
  spec.version       = Mongoid::Observers::VERSION
  spec.authors       = ["Richard Brooke"]
  spec.email         = ["richard.brooke@rightspend.com"]
  spec.summary       = %q{Mongoid observer (removed in Mongoid 4.0)}
  spec.description   = %q{Mongoid::Observer removed from Mongoid 4.0}
  spec.homepage      = "https://github.com/RightSpend/mongoid-observers"
  spec.license       = "MIT"

  spec.files         = Dir["{gemfiles,lib,spec}/**/*", "LICENSE.txt", "Rakefile", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mongoid", ">= 4.0.0"
end
