ENV['SINATRA_ENV'] ||= "development" #specifies a "development" label for sinatra environment


require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require 'rack-flash'
require_all 'app'
