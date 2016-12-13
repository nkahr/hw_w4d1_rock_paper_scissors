require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')

get '/game/:action1/:action2' do 
  game = Game.new(params[:action1], params[:action2])
  @result = game.return_winner()
  return erb(:result)
end 

get '/game' do 
  erb(:home)
end 
