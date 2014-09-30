task(:default) do 
  require './test/test.rb' 
end

desc "run the tests"
task :test => :default

desc "run service"
task :server do
  sh "ruby twitter.rb"
end

desc "bundle install"
task :bundle do
  sh "bundle install"
end