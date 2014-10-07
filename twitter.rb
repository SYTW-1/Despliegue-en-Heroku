# -*- coding: utf-8 -*-
require 'twitter'
require 'sinatra'

class PopularTwitter

	require './configure.rb'

	def usuario(client,username)
		return client.user? username
	end

	def amigos(client,username)
		return client.user(username).friends_count
	end

	def users(username,followers)
		if followers.to_i <= 0
			return [["error","Número incorrecto de usuarios",0]]
		elsif followers.to_i > 10
			return [["error","Limite de usuarios",0]]
		else
			client = my_twitter_client()
			if self.usuario(client,username)
				return client.friends(username,{}).take(followers.to_i).map{|i| [i.name,i.followers_count,client.user(i.id).profile_image_url]}.sort_by{|i,j| -j}
			else
				return [["error","El usuario no existe",0]]
			end
		end
	end

end

configure do
  set :show_exceptions, false
end

get "/" do
	@friends = []
	erb :index
end

get "/:username/:followers" do
	@friends = PopularTwitter.new.users(params[:username],params[:followers])
	erb :index
end

not_found do
	@friends = [["error","No se ha introducido un nombre de usuario",0]]
	erb :index
end

error do
	@friends = [["error","Ha habido un error inesperado: " + env['sinatra.error'].message,0]]
	erb :index
end
