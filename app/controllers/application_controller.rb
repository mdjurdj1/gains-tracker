class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "super_sekrit"
  set :views, Proc.new { File.join(root, "../views/") }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/login' do 
    erb :login 
  end 

  get '/signup' do 
    erb :signup 
  end 
end