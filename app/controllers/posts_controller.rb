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
    @post = Post.new(params[:post].permit(:body, :title))
    if @post.save
      flash[:notice] = "Post Saved."
      redirect_to @post
    else
      flash[:error] = "Post did not save correctly!"
      render :new
    end
  end

  def edit
  end
end
