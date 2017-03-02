require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end

  run! if app_file == $0

  get '/battle/add_players' do
    erb(:index)
  end

  post '/battle/names' do
    p params
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end

end
