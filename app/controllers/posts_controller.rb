class PostsController < ApplicationController

  # FULL CRUD

  # READ
  # index route for all posts
  get '/posts' do
    @posts = Post.all
    erb :'posts/index'
  end

  # show out for single post
  get '/posts/:id' do
    # id is coming from url - params
    @post = Post.find(params[:id])
    erb :'posts/show'
  end

  # CREATE
  # get 'post/new' render a form to create a new post
  # post route to create a new post

  # UPDATE
  # get 'post/edit' route to render the form for editing a post
  # patch route to update an existing post

  # DELETE
  # delete rotue to delete and existing post

end
