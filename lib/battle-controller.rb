require_relative 'player.rb'
require_relative 'game.rb'
require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  
  configure do
    set :views, "lib/views"
    set :public_dir, "public"
    set :session_secret, "add a very complicated random string here"
  end

  enable :sessions

  get '/' do
    erb :startgame
  end

  post '/names' do
    # NEVER USE GLOBAL VARS EXCEPT FOR THIS DEMO
    player1 = Player.new(params[:player1name])
    player2 = Player.new(params[:player2name])
    $game = Game.new(player1, player2)
    redirect '/battle'
  end

  get '/battle' do  
    @game = $game
    erb :battle
  end

  get '/attac' do
    @game = $game
    @game.attack(@game.player2)
    erb :attac  
  end

  run! if app_file == $0
end
