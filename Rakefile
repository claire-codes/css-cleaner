require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'


namespace :test do
	Cucumber::Rake::Task.new(:features) do |t|
		t.cucumber_opts = "features --format pretty"
	end

	#write a rake task that 1. runs tests 2. prints specs
	#rspec spec --format documentation
	RSpec::Core::RakeTask.new(:spec) do |t|
		t.rspec_opts = '--format documentation'
	end

	desc 'Run specs with NyanCat'
	RSpec::Core::RakeTask.new(:nyan) do |t|
		t.rspec_opts = '--format NyanCatFormatter'
	end

end

desc 'Default Rake task'
task :default do
	puts 'jumping the gun ...'
end
