require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative("./models/game")

get "/game/:hand1/:hand2" do
  game = Game.new(params[:hand1],params[:hand2])
  @result = game.play()
  erb(:result)
end
