class WorkoutController < ApplicationController

  get '/workouts/:id' do
    if logged_in?
      @workout = Workout.find(params[:id])
      erb :'/workouts/show'
    else 
      redirect '/users/login'
    end 
  end

  get '/workouts/:id/edit' do 
    if logged_in?
      @workout = Workout.find(params[:id])
      erb :'/workouts/edit'
    else  
      redirect '/users/login'
    end 
  end 

  patch '/workouts/:id' do 
    @workout = Workout.find(params[:id])
    @workout.update(date: params[:date]) if !params[:date].empty?
    @workout.update(notes: params[:notes]) if !params[:notes].empty?
    redirect "/workouts/#{@workout.id}"
  end 
    

  
end 