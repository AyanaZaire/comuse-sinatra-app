class UsersController < ApplicationController

  #render form
  get '/login' do
    erb :login
  end

  #create a session
  post '/login' do
    #recieve the input from login form
    #find the user
    #authenticate the user
    #log them in - creating a session
    binding.pry
  end


end
