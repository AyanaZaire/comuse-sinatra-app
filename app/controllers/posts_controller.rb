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
    @post = Post.new(title: params[:title], image_url: params[:image_url], description: params[:description], user_id: current_user.id)
    if @post.save
      flash[:message] = "Post successfully created!"
      redirect "/posts/#{@post.id}"
    else
      flash[:errors] = "Post creation failure: #{@post.errors.full_messages.to_sentence}"
      redirect '/posts/new'
    end
  end

  # show out for single post
  get '/posts/:id' do
    # id is coming from url - params
    @post = Post.find(params[:id])
    erb :'posts/show'
  end

  # UPDATE
  # link to edit on show page for post
  # get posts/edit to render a form to edit a post
  get '/posts/:id/edit' do
    @post = Post.find(params[:id])
    erb :'/posts/edit'
  end

  # patch route to update a existing post
  patch '/posts/:id' do
    @post = Post.find(params[:id])
    @post.update(title: params[:title], image_url: params[:image_url], description: params[:description])
    redirect "/posts/#{@post.id}"
  end

  # DELETE
  # delete rotue to delete and existing post
  delete '/posts/:id' do
    # we need the id to FIND the post to delete
    @post = Post.find(params[:id])
    @post.destroy
    redirect '/posts'
  end

end
