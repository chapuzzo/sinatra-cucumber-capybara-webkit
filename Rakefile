require 'rubygems'

desc "Run server"

  task :serverup do
    system 'rackup -p 3000'
  end

desc "Stop server"
  task :serverdown do
    system 'pkill -9 -f rackup'
  end


begin
  require 'cucumber'
  require 'cucumber/rake/task'
          
  desc "Run Acceptance Test"
  Cucumber::Rake::Task.new(:cucumber) do |t|
    t.cucumber_opts = "features"
 end
rescue LoadError
end


begin
    require 'rspec/core/rake_task'
    RSpec::Core::RakeTask.new(:spec)
    task :test => [:spec,:cucumber]
rescue LoadError
end

task :test => :cucumber
