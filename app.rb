require_relative 'config/environment'
require 'sinatra/base'

class App < Sinatra::Base

 get '/' do
 	
 	erb :index
 end

 get '/new' do
 	erb :new
 end
 
 post '/display_puppy' do
 	@name = params[:name]
 	@breed = params[:breed]
 	@age = params[:age]

 	erb :display_puppy
 end

end