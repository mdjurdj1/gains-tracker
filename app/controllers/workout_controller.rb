require './config/environment'

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
    last_date = @workout.date
    last_notes = @workout.notes
    @workout.update(params[:workout])
    @workout.update(date: last_date) if params[:workout][:date].empty?
    @workout.update(notes: last_notes) if params[:workout][:notes].empty?
    redirect "/workouts/#{@workout.id}"
  end 
    

  
end 