# frozen_string_literal: true

require "rulers/version"
# This will include the array file/methods in all Rulers apps
require "rulers/array"
# building first route
require "rulers/routing"
require "rulers/util"
require "rulers/dependencies"

module Rulers
  class Error < StandardError; end

  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404, {'Content-Type' => 'text/html'}, []]
      end

      # This is routing the localhost to the quotes controller/a_quote action
      if env['PATH_INFO'] == '/'
        return '/quotes/a_quote'
        # return [301,
        #   {'Location' => '/quotes/a_quote'}, []]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)

      #the begin/rescue is a way to handle expected error
      begin
        text = controller.send(act)
      rescue StandardError => e
        return [
          500,
          {'Content-Type' => 'text/html'},
          [e.message]
        ]
      end


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
