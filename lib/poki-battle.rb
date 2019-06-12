require 'sinatra'
#require 'rspec'
#require 'capybara'
#require 'pry'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  erb :startgame
end

get '/playernames' do
  erb :playernames
end

post '/battle' do
  @player1name = params[:player1name]
  @player2name = params[:player2name]
  erb :battle
end
