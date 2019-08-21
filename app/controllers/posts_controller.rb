class PostsController < ApplicationController

  # FULL CRUD

  # READ
  # index route for all posts
  get '/posts' do
    @posts = Post.all
    erb :'posts/index'
  end

  # CREATE
  # get 'post/new' render a form to create a new post
  get '/posts/new' do
    erb :'/posts/new'
  end

  # post route to create a new post
  post "/posts" do
    @post = Post.create(title: params[:title], image_url: params[:image_url], description: params[:description], user_id: current_user.id)

    redirect "/posts/#{@post.id}"
  end

  # show out for single post
  get '/posts/:id' do
    # id is coming from url - params
    @post = Post.find(params[:id])
    erb :'posts/show'
  end

  # UPDATE
  # get 'post/edit' route to render the form for editing a post
  # patch route to update an existing post

  # DELETE
  # delete rotue to delete and existing post

end
