require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/game')
also_reload('./models')
