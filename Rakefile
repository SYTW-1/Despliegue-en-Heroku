desc "Arrancar la aplicacion"
task :default do
  sh "ruby twitter.rb"
end
desc "Instalar las gemas"
task :bundle do
	sh "bundle install"
end
desc "Ejecutar las pruebas"
task :test do
	sh "ruby ./test/test.rb"
end