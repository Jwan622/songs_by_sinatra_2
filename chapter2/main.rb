require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'
require 'sass'
require './song'

get ('/styles.css'){scss :styles}

get '/' do
  slim :home
end

get '/about' do
  @title = "All about this Website"
  slim :about
end

get '/contact' do
  @title = "Contact info for this site"
  slim :contact
end

not_found do
  slim :not_found_page
end
