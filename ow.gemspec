# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ow/version'

Gem::Specification.new do |gem|
  gem.name          = "ow"
  gem.version       = Ow::VERSION
  gem.authors       = ["Martin Svangren"]
  gem.email         = ["martin@masv.net"]
  gem.description   = %q{A Ruby parser for OW-SERVER XML files.}
  gem.summary       = %q{A Ruby parser for OW-SERVER XML files.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency("minitest", "> 0")
end
