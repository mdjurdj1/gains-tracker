class UserController < ApplicationController

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

  get '/logout' do
    session.clear
    redirect '/'
  end

end
