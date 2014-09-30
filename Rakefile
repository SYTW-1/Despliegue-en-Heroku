task(:default) do 
require_relative 'test' 
end

desc "run the tests"
task :test => :default

desc "run service"
task :server do
  sh "ruby twitter.rb"
end

desc "run service using bundle exec"
task :bexec do
  sh "bundle exec rackup -p 4567"
end

desc "Arrancar la aplicacion"
task :exec do
  sh "ruby twitter.rb"
end
desc "Instalar las gemas"
task :bundle do
	sh "bundle install"
