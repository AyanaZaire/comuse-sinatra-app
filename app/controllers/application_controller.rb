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

  #helper methods for logged in user
  helpers do
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    #returns a boolean
    def logged_in?
      #current_user will return nil or the entire user object (we want true/false)
      !!current_user
    end
  end

end
