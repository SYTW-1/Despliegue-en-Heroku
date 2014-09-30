# -*- coding: utf-8 -*-
require 'twitter'
require 'sinatra'
require 'json'

class PopularTwitter

	require './configure.rb'

	def users(username,followers)
		client = my_twitter_client()
		return client.friends(username,{}).take(followers).map{|i| [i.name,i.followers_count]}.sort_by{|i,j| -j}.to_json
	end

end

#pop = PopularTwitter.new
#puts pop.users('naddiaz92',5)

