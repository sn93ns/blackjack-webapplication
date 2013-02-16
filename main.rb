require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

set :sessions, true

get '/inline' do 
	"Welcome to Sujan HOME!!!"
end

get '/template' do 
	erb :mytemplate
end

get '/nested_template' do 
	erb :"/users/profile"
end

get '/nothere' do 
	redirect '/inline'	
end

get '/form' do 
	erb :form	
end

post '/myaction' do 
	params[:username]	
end
	