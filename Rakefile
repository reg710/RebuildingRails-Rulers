# frozen_string_literal: true

require "bundler/gem_tasks"
require "rubocop/rake_task"
require "rake/testtask"

RuboCop::RakeTask.new

task default: :rubocop

Rake::TestTask.new do |t|
    t.name = "test"
    t.libs << "test"
    t.test_files = Dir['test/*test*.rb']
    t.verbose = true
end
