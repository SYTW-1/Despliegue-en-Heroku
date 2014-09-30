ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require_relative '../twitter.rb'

include Rack::Test::Methods

def app
  Sinatra::Application
end

describe "Pruebas twitter.rb" do

    before :all do
        @twitt = PopularTwitter.new
        @client = my_twitter_client()
        @user1 = "naddiaz92"
        @user2 = "asdfg"

    end
    
    it "El usuario debe existir" do
        assert @twitt.usuario(@client, @user1)
    end
    it "El número de usurios retornados debe ser" do
        assert_equal 20, @twitt.amigos(@client, @user1)
    end
    it "El usuario no debe existir" do
        refute @twitt.usuario(@client, @user2)
    end
    
    it "El número de usuarios retornados es incorrecto" do
        refute 4, @twitt.amigos(@client, @user1)
    end    

end

describe "Pruebas en la web" do

	it "Se carga la página del indice en el servidor" do
    		get '/'
    		assert last_response.ok?
  	end

	it "El titulo de la pagina es Popular Friends Twitter APP" do
		get '/'
		assert last_response.body.include?("<title>Popular Friends Twitter APP</title>"), "El titulo debe ser 'Popular Friends Twitter APP'"
	end

	it "Existe el campo formulario donde se comprueba el nombre de nuestros" do
		get '/'
		assert last_response.body.include?("Nombre de usuario en Twitter:"), "El body debe contener nombre usuario."
	end

	it "Existe el campo que pide el numero de amigos a contar" do
		get '/'
		assert last_response.body.include?("¿Cuántos amigos desea mostrar?"), "El body debe contener cuantos amigos."	
	end

end