class WorkoutController < ApplicationController

  get '/workouts' do 
    redirect '/home'
  end 

  get '/workouts/new' do 
    if logged_in?
      @user = current_user
      erb :'workouts/new'
    else 
      redirect '/users/login'
    end 
  end 

  post '/workouts' do 
    if !params[:workout][:name].empty? && !params[:workout][:date].empty? && !params[:workout][:notes].empty?
      @workout = Workout.new(params[:workout])
      current_user.workouts << @workout 
      current_user.save
      flash[:message] = "Successfully saved new workout!"
      erb :'workouts/show'
    else 
      flash[:message] = "Unable to save workout. Did you make sure to give it a name, date, and notes?"
      redirect '/workouts/new'
    end 
  end 
  
  get '/workouts/:id' do
    if logged_in?
      @workout = Workout.find(params[:id])
      if @workout && @workout.user == current_user
        erb :'/workouts/show'
      elsif @workout && !(@workout.user == current_user)
        redirect '/home' 
      end 
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
    if logged_in?
      @workout = Workout.find(params[:id])
      last_date = @workout.date
      last_name = @workout.name
      last_notes = @workout.notes
      @workout.update(params[:workout])
      @workout.update(date: last_date) if params[:workout][:date].empty? || !params[:workout][:date].is_a?(Date)
      @workout.update(name: last_name) if params[:workout][:name].empty?
      @workout.update(notes: last_notes) if params[:workout][:notes].empty?
      redirect "/workouts/#{@workout.id}"
    else 
      redirect '/users/login'
    end 
  end 

  delete '/workouts/:id/delete' do 
    @workout = Workout.find(params[:id])
    if logged_in? && @workout.user == current_user
      @workout.delete 
      flash[:message] = "Successfully deleted workout!"
      redirect to '/home'
    else
      redirect to '/users/login'
    end 
  end 
    
    

  
end 