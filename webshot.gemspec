# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'webshot/version'

Gem::Specification.new do |spec|
  spec.name          = "webshot"
  spec.version       = Webshot::VERSION
  spec.authors       = ["Vitalie Cherpec"]
  spec.email         = ["vitalie@penguin.ro"]
  spec.description   = %q{Captures a web page as a screenshot using Poltergeist, Capybara and PhantomJS}
  spec.summary       = %q{Captures a web page as a screenshot}
  spec.homepage      = "https://github.com/vitalie/webshot"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 13"
  spec.add_development_dependency "minitest", "~> 5.14"
  spec.add_development_dependency "gem-release", "~> 2.1"
  spec.add_development_dependency "bump", "~> 0.9"

  spec.add_dependency "activesupport", "~> 6"
  spec.add_dependency "poltergeist", [">= 1.12.0", "<= 1.18.1"]
  spec.add_dependency "faye-websocket", "~> 0.11.0"
  spec.add_dependency "mini_magick", "~> 4.9"
end
