$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'robotlegs/version'

Gem::Specification.new do |s|
  s.name                      = Robotlegs::NAME
  s.version                   = Robotlegs::VERSION
  s.author                    = "Kristofer Joseph, Amos Lanka"
  s.email                     = ["projectsprouts@googlegroups.com"]
  s.homepage                  = "http://projectsprouts.org"
  s.summary                   = "Robotlegs Framework for AS3 wrapped in a Sprout::Specification for implementation into a sprout project."
  s.description               = "Robotlegs Framework for AS3 wrapped in a Sprout::Specification for implementation into a sprout project. Robotlegs is a lightweight AS3 MVCS micro-architecture. Robotlegs was created to provide a small, loosely coupled application framework that is easy to test."
  s.executables               = ["rl-project","rl-context","rl-proxy","rl-mediator","rl-command","rl-service"]

  s.required_rubygems_version = ">= 1.3.6"
  # Remove gemspec dependency on rake
  # s.files                     = FileList["**/*"].exclude /docs|.DS_Store|generated|.svn|.git|vendor/
  s.files = Dir["{test,lib,bin}/**/*"]
  s.files.concat Dir["*.gemspec", "build*", "[A-Z]*[.a-z]*"]
    
  s.add_dependency "flashsdk", '>= 1.0.8.pre'
  s.add_development_dependency "shoulda"
  s.add_development_dependency "mocha"
  s.add_development_dependency "rcov"
  s.add_development_dependency "rake"
  
  s.require_paths             << 'lib'
end
