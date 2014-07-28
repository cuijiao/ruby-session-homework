require 'rspec/core/rake_task'
require_relative "app/fizzbuzz" 
require_relative "app/blackjack" 
require_relative "app/splithash" 

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
       p fizzbuzz args[:number]
    end
end

namespace :blackjack do
    desc "blackjack task"
    task :blackjack, [:array] do |task, args|
       args.with_defaults(:array => ["5","4","3","2","A","K"])
       p scoreHand args[:array]
    end
end

namespace :splithash do
    desc "splithash task"
    task :splithash, [:hash, :keys] do |task, args|
       args.with_defaults(:hash => {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 })
       args.with_defaults(:keys => [:c,:e])
       p split_hash_by_key args[:hash], args[:keys]
    end
end
