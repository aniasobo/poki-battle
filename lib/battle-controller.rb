require_relative 'player.rb'
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
    $player1 = Player.new(params[:player1name])
    $player2 = Player.new(params[:player2name])
    #@player1name = params[:player1name]
    #@player2name = params[:player2name]

    #session[:player1name] = @player1name
    #session[:player2name] = @player2name
    redirect '/battle'
  end

  get '/battle' do  
    @prettyplayer1 = $player1.pretty_player
    @prettyplayer2 = $player2.pretty_player
    @player1name = $player1.name
    @player2name = $player2.name 
#    @player1name = session[:player1name]
#    @player2name = session[:player2name]
    erb :battle
  end

  get '/attac' do
    @player1name = $player1.name
    @player2name = $player2.name 
    @prettyplayer1 = $player1.pretty_player
    @prettyplayer2 = $player2.pretty_player
 #   @player1name = session[:player1name]
 #   @player2name = session[:player2name]
    erb :attac  
  end

  run! if app_file == $0
end
