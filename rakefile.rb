require 'rspec/core/rake_task'
require_relative "app/fizzbuzz" 

namespace :cuijiao do
    task :introduce do
    	p "It's homework for ruby session from cuijiao"
    end
end

namespace :rspec_test do
	RSpec::Core::RakeTask.new(:spec)
    task :default => :spec
end


namespace :fizzbuzz do
    desc "fizzbuzz task"
    task :fizzbuzz, [:number] do |task, args|
       fizzbuzz args[:number]
    end
end
