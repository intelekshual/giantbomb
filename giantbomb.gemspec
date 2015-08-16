# coding: utf-8
require 'giantbomb/version'

Gem::Specification.new do |g|
  g.name        = "giantbomb"
  g.version     = GiantBomb::VERSION
  g.platform    = Gem::Platform::RUBY
  g.date        = Date.today.to_s

  g.authors     = ["Robert Coker", "Vlad Radulescu"]
  g.email       = ["rob@robertsays.com", "pacMakaveli90@gmail.com"]

  g.homepage    = "http://rubygems.org/gems/giantbomb"
  g.summary     = %q{A Ruby wrapper for the Giant Bomb video game wiki API.}
  g.description = %q{Provides a simple, easy to use interface for the Giant Bomb video game wiki API.}

  g.add_dependency("httparty")

  g.rubyforge_project = "giantbomb"

  g.files         = `git ls-files`.split("\n")
  g.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  g.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  g.require_paths = ["lib"]
end
