require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/game')
also_reload('./models')

  get '/game/:player1/:player2' do
    player1 = params['player1']
    player2 = params['player2']
    @results = Game.winner(player1, player2)
    erb(:results)
  end

  get '/' do
    erb(:home)
  end

  get '/rules' do
    erb(:rules)
  end

  get '/players-hand' do
    erb(:players_hand)
  end

  get '/computer' do
    erb(:computer)
  end
