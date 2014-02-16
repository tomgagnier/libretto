# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'libretto/version'

Gem::Specification.new do |specification|
  specification.name = 'libretto'
  specification.version = Libretto::VERSION
  specification.authors = ['Tom Gagnier']
  specification.email = ['tgagnier@gmail.com']
  specification.summary = %q{Scripting}
  specification.description = %q{Collection of useful bash and ruby scripts.}
  specification.homepage = 'https://github.com/tomgagnier/libretto'
  specification.license = 'MIT'

  specification.files = `git ls-files -z`.split("\x0")
  specification.executables = specification.files.grep(%r{^bin/}) { |f| File.basename(f) }
  specification.test_files = specification.files.grep(%r{^(test|spec|features)/})
  specification.require_paths = ['lib']

  specification.add_development_dependency 'bundler', '~> 1.5'
  specification.add_development_dependency 'rake'
  specification.add_development_dependency 'rspec'
end
