require "sinatra/base"
require "./lib/player"

class Rps < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    @player_name = params[:player_name]
    erb :play
  end

  run! if app_file == $PROGRAM_NAME
end