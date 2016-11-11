require "bundler/gem_tasks"
require "rake/testtask"

task :default => :spec

desc "Run tests"
Rake::TestTask.new do |t|
  t.libs << "test"
end
