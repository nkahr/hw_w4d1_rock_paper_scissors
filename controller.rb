require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')

get '/rock_paper_scissors/:action1/:action2' do 
  game = Game.new(params[:action1], params[:action2])
  @result = game.return_winner()
  return erb(:result)
end 

get '/' do 
  erb(:home)
end 
