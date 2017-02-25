class ExerciseController < ApplicationController

  get '/exercises' do
    erb :'exercises/index'
  end 

  get '/exercises/new' do
    erb :'exercises/new'
  end 

end  