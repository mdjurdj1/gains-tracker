class ExerciseController < ApplicationController

  get '/exercises' do
    erb :'exercises/index'
  end 

  get '/exercises/new' do
    erb :'exercises/new'
  end 

  post '/exercises' do 
    if logged_in? && params[:exercise][:name] && params[:exercise][:bodypart]
      if Exercise.find_by(name: params[:exercise][:name])
        flash[:message] = "An exercise with that name already exists!"
        redirect '/exercises/new'
      else 
        e = Exercise.create(params[:exercise])
        redirect '/exercises'
      end
    else 
      redirect '/login'
    end 
  end 

end  