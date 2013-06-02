# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mbta_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "mbta_ruby"
  spec.version       = MbtaRuby::VERSION
  spec.authors       = ["Joanne Cheng"]
  spec.email         = ["chengjoanne2@gmail.com"]
  spec.description   = %q{Wrapper around the mbta realtime api}
  spec.summary       = %q{Simple wrapper around the mbta realtime api}
  spec.homepage      = "http://www.github.com/joannecheng/mbta_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "typhoeus"
  spec.add_dependency "nokogiri"
end
