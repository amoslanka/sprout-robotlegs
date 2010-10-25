$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'sprout'
require 'robotlegs/version'

require 'robotlegs/generators/robotlegs_class_generator_base'
require 'robotlegs/generators/project_generator'
require 'robotlegs/generators/context_generator'
require 'robotlegs/generators/proxy_generator'
require 'robotlegs/generators/mediator_generator'
require 'robotlegs/generators/command_generator'
require 'robotlegs/generators/service_generator'

module Robotlegs  
  # NAME and VERSION live in robotlegs/version
end

Sprout::Specification.new do |s|
  s.name    = Robotlegs::NAME
  s.version = Robotlegs::VERSION
  s.add_remote_file_target do |f|
    f.platform = :universal
    f.url = "http://downloads.robotlegs.org/robotlegs-framework-v1.3.0.zip"
    f.md5 = '48ce7343e8d004c3bc9e335dc0c2f190'
    f.archive_type = :zip
    f.add_library :swc, ['bin/', 'libs/', 'docs/']
    f.add_library :src, ['bin/', 'src', 'libs/', 'docs/']
  end
end
