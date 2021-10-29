# frozen_string_literal: true

require_relative "rulers/version"

module Rulers
  # class Error < StandardError; end
  class Application
    def call(env)
      `echo debug > debug.text`;
      [200, {'Content-Type' => 'text/html'}, ["Hello from Ruby on Rulers!"]]
    end
  end
end
