class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get '/recipes' do
    @recipes = Recipe.all
    #binding.pry
    erb :index
    #recipe = Recipe.new(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
  end

  get '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    erb :show
  end
end
