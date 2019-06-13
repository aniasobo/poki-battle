require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  
  configure do
    set :views, "lib/views"
    set :public_dir, "public"
    set :session_secret, "stuff"
  end

  enable :sessions

  get '/' do
    erb :startgame
  end

  post '/names' do
    @player1name = params[:player1name]
    @player2name = params[:player2name]

    session[:player1name] = @player1name
    session[:player2name] = @player2name
    redirect '/battle'
  end

  get '/battle' do  
  #  @player_one = PlayerOneHitPoints.new(params[:player1name]).pretty_player_one
  #  @player_two = PlayerTwoHitPoints.new(params[:player2name]).pretty_player_two
  @player1name = session[:player1name]
  @player2name = session[:player2name]
  erb :battle
  end

  run! if app_file == $0
end
