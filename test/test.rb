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
        @user2 = "naddiaz000"

    end
    
    it "El usuario debe existir" do
        assert @twitt.usuario(@client, @user1)
    end
    it "El número de usurios retornados debe ser" do
        assert_equal 18, @twitt.amigos(@client, @user1)
    end
    it "Elusuario no debe existir" do
        refute @twitt.usuario(@client, @user2)
    end
    
    it "El número de usuarios retornados es incorrecto" do
        refute_equal 4, @twitt.amigos(@client, @user1)
    end    

end
