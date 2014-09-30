ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require_relative 'twitter.rb'

include Rack::Test::Methods

def app
  Sinatra::Application
end

describe "Amigos populares" do
end