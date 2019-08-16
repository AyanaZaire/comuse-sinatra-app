require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    #i need to enable sessions
    enable :sessions
    #i need to set session something
    set :session_secret, "our_super_secret_session_secret"
  end

  get "/" do
    erb :welcome
  end

end
