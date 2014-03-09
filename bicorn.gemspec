# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bicorn/version'

Gem::Specification.new do |spec|
  spec.name          = "bicorn"
  spec.version       = Bicorn::VERSION
  spec.authors       = ["Konboi"]
  spec.email         = ["ryosuke.yabuki@gmail.com"]
  spec.summary       = %q{bicorn can output  STDOUT and STDERR with file}
  spec.description   = %q{bicorn can output  STDOUT and STDERR with file}
  spec.homepage      = "https://github.com/Konboi/bicorn"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
