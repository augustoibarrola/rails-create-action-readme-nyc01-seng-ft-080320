class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create 
    @post = Post.new #creates a new instance of Post that is evoked by the variable 'post'
    @post.title = params[:title] #assigns 'post's' title with the input form data [:title]
    @post.description = params[:description]  #assigns 'post's' description with the input form data [:description]
    @post.save #.save generates a SQL script that inserts the new record with its newly defined attributes into the database
    redirect_to post_path(@post) #this follows the convention of redirecting to the new resource's show page. As soon as this post is created, then, it redirects to that new post's show page. 
  end
end
