class UsersController < ApplicationController

  #render form
  get '/login' do
    erb :login
  end

  #create a session
  post '/login' do
    #[x] recieve the input from login form
    #[x] find the user
    @user = User.find_by(email: params[:email])
    #authenticate the user
    if @user.authenticate(params[:password])
      #[x] log them in - creating a session, adding a key/value pair to session hash
      session[:user_id] = @user.id
      #[x] redirects to user profile
      redirect "users/#{@user.id}"
    else
      #show an error
      #redirect to login form
    end
  end

  #user SHOW route
  get '/users/:id' do
    "user profile page!"
  end

end
