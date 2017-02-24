class WorkoutController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "super_sekrit"
  set :views, Proc.new { File.join(root, "../views/") }
  enable :sessions

  get '/workouts/:id' do
    @workout = Workout.find(params[:id])
    erb :'/workouts/show'
  end
end 