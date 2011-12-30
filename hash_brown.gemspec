# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hash_brown/version"

Gem::Specification.new do |s|
  s.name        = "hash_brown"
  s.version     = HashBrown::VERSION
  s.authors     = ["Ryland Herrick"]
  s.email       = ["ryland@bendyworks.com"]
  s.homepage    = ""
  s.summary     = %q{Turns Hash keys into methods}
  s.description = %q{Now you don't need to fuss with brackets when using Hashes.
                     Abuses method_missing responsibly.}

  s.rubyforge_project = "hash_brown"
  s.add_development_dependency('rspec')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
