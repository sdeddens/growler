require 'sinatra'
require 'sinatra/reloader'
	
before do	


end


# Routes
get '/' do

	erb :index
end

get '/growl' do

	erb :growl
end

post '/growl' do

	erb :growl
end