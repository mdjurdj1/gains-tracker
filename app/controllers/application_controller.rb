class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "super_sekrit"
  set :views, Proc.new { File.join(root, "../views/") }
  enable :sessions

  get '/' do
    erb :'index'
  end

  get '/login' do 
    erb :'/users/login'
  end 

  post '/login' do 
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id 
      redirect to '/home'
    else 
      redirect to '/'
    end 
  end 

  get '/home' do
    @user = current_user
    erb :'/users/home'
  end

  get '/signup' do 
    erb :'/users/signup' 
  end 












  helpers do 
    def logged_in?
      !!session[:user_id]
    end 

    def current_user 
      User.find(session[:user_id])
    end 
  end 

  
end

  