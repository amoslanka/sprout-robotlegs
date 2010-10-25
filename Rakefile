require 'bundler'
Bundler.require

require 'rake/clean'
require 'rake/testtask'

# the filename used by the gem
filename = "#{Robotlegs::NAME}-#{Robotlegs::VERSION}"

CLOBBER.add('pkg')
CLOBBER.add('vendor')
CLOBBER.add('.bundle')

# 
# Tasks
# 

namespace :test do
  Rake::TestTask.new(:units) do |t|
    t.libs << "test/unit"
    t.test_files = FileList["test/unit/*_test.rb"]
    t.verbose = true
  end
end

desc "Run tests"
task :test => 'test:units'


# 
# Gem tasks
# 

namespace :gem do
  directory "pkg"
  
  desc 'Build the gem'
  task :build => 'pkg' do
    puts `gem build #{Robotlegs::NAME}.gemspec`
    puts `mv #{filename}.gem pkg/#{filename}.gem`
  end

  desc "Build and install #{filename}.gem"
  task :install => :build do
    puts `gem install pkg/#{filename}`
  end

  desc "Build and push #{filename}.gem to rubygems.org"
  task :push => :build do
    system "gem push pkg/#{filename}.gem"
  end
end
