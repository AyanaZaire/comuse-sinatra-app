class UsersController < ApplicationController

  #render form
  get '/login' do
    erb :login
  end


end
