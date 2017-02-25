require './config/environment'
class ApplicationController < Sinatra::Base
  
  configure do 
    register Sinatra::ActiveRecordExtension
    set :session_secret, "super_sekrit"
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions
  end 

  get '/' do
    erb :'index'
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

  