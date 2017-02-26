class ExerciseController < ApplicationController

  get '/exercises' do
    erb :'exercises/index'
  end 

  get '/exercises/new' do
    erb :'exercises/new'
  end 

  post '/exercises' do 
    if logged_in? && !params[:exercise][:name].empty? && !params[:exercise][:bodypart].empty?
      if Exercise.find_by(name: params[:exercise][:name])
        flash[:message] = "An exercise with that name already exists!"
        redirect '/exercises/new'
      else
        e = Exercise.create(name: params[:exercise][:name], bodypart: params[:exercise][:bodypart])
        redirect '/exercises'
      end
    elsif params[:exercise][:name].empty? || params[:exercise][:bodypart].empty?
      flash[:message] = "Your exercise must have a name and bodypart!"
      redirect '/exercises/new'
    else 
      redirect '/login'
    end 
  end 

end  