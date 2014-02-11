# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'libretto/version'

Gem::Specification.new do |spec|
  spec.name          = "libretto"
  spec.version       = Libretto::VERSION
  spec.authors       = ["Tom Gagnier"]
  spec.email         = ["tgagnier@gmail.com"]
  spec.summary       = %q{Scripting}
  spec.description   = %q{Collection of useful bash and ruby scripts.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
