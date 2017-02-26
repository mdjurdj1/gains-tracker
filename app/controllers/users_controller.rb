class UserController < ApplicationController

  get '/login' do
    erb :'/users/login'
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      flash.clear
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
    if logged_in?
      redirect '/home'
    else
      erb :'/users/signup'
    end
  end

  post '/signup' do
    if User.find_by(username: params[:username])
      flash[:message] = "That username is taken, please try another one!"
      redirect '/signup'
    else
      @user = User.new(username: params[:username], password: params[:password], email: params[:email])
        if @user.save
          session[:user_id] = @user.id
          redirect '/home'
        else
          flash[:message] = "Invalid password(6 character minimum) or email given. Please try again!"
          redirect '/signup'
        end
      end
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end
