class PostsController < ApplicationController
  before_action :set_post, only:[:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.create
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:success] = "Post updated."
      redirect_to posts_path
    else
      flash[:alert] = "Update failed. Please try again."
      render :edit
    end
  end

  def create
    if @post = Post.create(post_params)
      flash[:success] = "Your post has been created!"
      redirect_to posts_path
    else
      flash[:alert] = "Your new post couldn't be created! Please try again!"
      render :new
    end
  end

  def destroy
    @post.delete
    redirect_to posts_path
  end


  private

  def set_post
    @post = Post.find params[:id]
  end


  def post_params
    params.require(:post).permit(:avatar, :caption)
  end

end
