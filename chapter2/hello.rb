require 'sinatra'
require 'sinatra/reloader' if development?

get '/:name' do
  name = params[:name]
  "Hi there #{name}!"
end

get '/frank' do
  name = "Frank"
  "Hello #{name}"
end
