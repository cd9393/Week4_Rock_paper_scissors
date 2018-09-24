require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

get "/rock/scissors" do
  return " Rock wins"
end

get "/rock/paper" do
  return "paper wins"
end

get "/paper/scissors" do
  return "Scissors win"
end
