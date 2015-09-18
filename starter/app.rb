require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do
	session[:growl_list] ||= []
	@growl_list = session[:growl_list]
end


# Routes
get '/' do

	erb :index
end

get '/growl' do

	erb :growl
end

post '/growl' do
	session[:growl_list] << params[:new_growl]
	redirect '/'
	erb :growl
end




