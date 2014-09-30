task(:default) do 
  require_relative 'test' 
end

desc "run the tests"
task :test => :default

desc "run service"
task :server do
  sh "ruby twitter.rb"
end

desc "run service"
task :testeo do
  sh "ruby ./test/test.rb"
end