require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    'Hello Battle!'
  end

  run! if app_file == $0

  get '/add_players' do
    erb(:index)
  end

  post '/names' do
    p params
    session['player1'] = params[:player1]
    session['player2'] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session['player1']
    @player2 = session['player2']
    @player2hp = "20"
    @maxhp = "100"
    erb(:play)
  end

end
