require 'rspec/core/rake_task'
require "bundler/gem_tasks"

#default directory is '/specs'
# run with 'rake spec'

RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['--color','--format','nested']
end
task default: :spec
