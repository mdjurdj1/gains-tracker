class UserController < ApplicationController

  get '/login' do
    erb :'/users/login'
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      flash[:message] = ""
      session[:user_id] = @user.id
      redirect to '/home'
    elsif @user && !@user.authenticate(params[:password])
      flash[:message] = "Invalid Password - Please try again."
      erb :'/users/login'
    else
      flash[:message] = "No such user was found - Please try again."
      erb :'/users/login'
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
