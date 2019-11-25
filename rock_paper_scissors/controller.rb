require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/game')
also_reload('./models')

get '/game/:item1/:item2' do
  item1 = params['item1']
  item2 = params['item2']
  @results = Game.winner(item1, item2)
  erb(:results)
end
