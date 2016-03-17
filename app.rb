require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    $battle  = Game.new
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player1
    @player_2 = $player2
    erb :play
  end

  get '/attack1' do
    @player_1 = $player1
    @player_2 = $player2
    $battle.attack(@player_2)
    erb :attack1
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
