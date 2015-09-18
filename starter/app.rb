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
	# @growl_list = session[:growl_list]
	session[:growl_list] << params[:new_growl]
	puts @growl_list[0..-1]
	redirect '/'
	erb :growl
end

