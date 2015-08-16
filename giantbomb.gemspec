# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'giantbomb'

Gem::Specification.new do |s|
  s.name        = 'giantbomb'
  s.version     = GiantBomb::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Robert Coker', 'Vlad Radulescu']
  s.email       = ['rob@robertsays.com', 'pacMakaveli90@gmail.com']
  s.homepage    = 'http://rubygems.org/gems/giantbomb'
  s.summary     = %q{A Ruby wrapper for the Giant Bomb video game wiki API.}
  s.description = %q{Provides a simple, easy to use interface for the Giant Bomb video game wiki API.}

  s.rubyforge_project = 'giantbomb'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency('httparty')
end
