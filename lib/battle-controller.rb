require 'sinatra/base'
#require 'rspec'
#require 'capybara'
#require 'pry'
require 'shotgun'
require_relative './playeronehp'
require_relative './playertwohp'

class Battle < Sinatra::Base
  # configure do
 # set :views, "lib/views"
 # set :public_dir, "public"
 # end
  
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

  post '/battle' do  # the below does not work
    @player_one = PlayerOneHitPoints.new(params[:player1name]).pretty_player_one
    @player_two = PlayerTwoHitPoints.new(params[:player2name]).pretty_player_two
    erb :battle
  end

  run! if app_file == $0
end
