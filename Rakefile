require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

task :default do
  system "rake --tasks"
end

Cucumber::Rake::Task.new(:spec) do |t|
  t.cucumber_opts = "features --format pretty"
end