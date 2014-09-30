# -*- coding: utf-8 -*-
require 'twitter'
require 'sinatra'
require 'json'

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
			return [["error","Número incorrecto de usuarios"]]
		elsif followers.to_i > 10
			return [["error","Limite de usuarios"]]
		else
			client = my_twitter_client()
			return client.friends(username,{}).take(followers.to_i).map{|i| [i.name,i.followers_count]}.sort_by{|i,j| -j}
		end
	end

end

get "/" do
	@friends = []
	erb :index
end

get "/:username/:followers" do
	@friends = PopularTwitter.new.users(params[:username],params[:followers])
	print @friends
	erb :index
end
