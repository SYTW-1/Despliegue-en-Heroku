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
			return [["error",0],["description",'Número incorrecto de usuarios']].to_json
		elsif followers.to_i > 10
			return [["error",1],["description","Limite de usuarios"]].to_json
		else
			return client.friends(username,{}).take(followers.to_i).map{|i| [i.name,i.followers_count]}.sort_by{|i,j| -j}.to_json
		end
	end

end

get "/" do
	erb :index
end

post "/:username/:followers" do
	return PopularTwitter.new.users(params[:username],params[:followers])
end
