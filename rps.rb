require 'sinatra/base'
require 'sinatra'
require './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $p1 = Player.new(params[:p1])
    redirect '/play'
  end

  get '/play' do
    $p1
    erb(:play)
  end

  post '/move' do
    $p1.move(params[:p1_move])
  end

  run! if app_file == $0

end
