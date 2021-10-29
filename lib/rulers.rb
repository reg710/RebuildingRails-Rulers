# frozen_string_literal: true

require "rulers/version"
# This will include the array file/methods in all Rulers apps
require "rulers/array"

module Rulers
  # class Error < StandardError; end
  class Application
    def call(env)
      `echo debug > debug.text`;
      [200, {'Content-Type' => 'text/html'}, ["Hello from Ruby on Rulers!"]]
    end
  end
end
