require "sinatra/activerecord/rake"
require "rspec/core/rake_task"

namespace :db  do
  task :load_config do
    require "./app"
  end
end

task :default => :spec
RSpec::Core::RakeTask.new
