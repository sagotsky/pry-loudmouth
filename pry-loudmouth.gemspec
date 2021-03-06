# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pry/loudmouth/version'

Gem::Specification.new do |spec|
  spec.name          = "pry-loudmouth"
  spec.version       = Pry::Loudmouth::VERSION
  spec.authors       = ["Jon Sagotsky"]
  spec.email         = ["sagotsky@gmail.com"]

  spec.summary       = %q{Make pry sessions announce when they start.}
  spec.description   = %q{When a pry session starts, change the process title and alert user with a terminal bell.  Switch back to ruby process afterwards.}
  spec.homepage      = "https://github.com/sagotsky/pry-loudmouth"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"#, "~> 1.10"
  spec.add_development_dependency "rake"#, "~> 10.0"
end
