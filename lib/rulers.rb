# frozen_string_literal: true

require "rulers/version"
# This will include the array file/methods in all Rulers apps
require "rulers/array"
# building first route
require "rulers/routing"

module Rulers
  # class Error < StandardError; end
  class Application
    def call(env)
      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)
      [200, {'Content-Type' => 'text/html'}, [text]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end
end
