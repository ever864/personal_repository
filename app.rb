require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'


set :database, {adapter: "sqlite3", database: "app.sqlite3"}
set :port, 4200


class Post < ActiveRecord::Base
end

get '/create_post' do
  erb  :create_post
end

post '/post' do
 @post = Post.create(title: params[:title], post: params[:post])

 erb :post
end

get '/' do
  @posts = Post.all

  erb :landing_page
end
