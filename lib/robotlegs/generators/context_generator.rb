module Robotlegs
  class ContextGenerator < Sprout::Generator::Base

    ##
    # This is how you add a parameter to your generator
    # add_param :fwee, String, { :default => "fwee" }

    def manifest
      directory input.snake_case do
        template input.camel_case
      end

    end

  end
end
