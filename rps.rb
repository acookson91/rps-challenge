require 'sinatra/base'
require 'sinatra'
require './lib/player'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game=Game.new(Player.new(params[:p1]),Computer.new)
    redirect '/play'
  end

  post '/multiplayer' do
    $game=Game.new(Player.new(params[:player1]),Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    $game
    erb(:play)
  end

  post '/move' do
    $game.player1.your_move(params[:p1_move])
    $game.player2.your_move(params[:p2_move])
    if $game.player2.name == 'computer' || $game.player2.move != nil
      redirect 'result'
    else
      redirect '/play'
    end
  end

  get '/result' do
    @game = $game
    erb(@game.choose_winner)
  end

  run! if app_file == $0

end
