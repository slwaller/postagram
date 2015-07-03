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
    @post.update_attributes post_params
    redirect_to post_path(@post)
  end

  def create
    if @post = Post.create(post_params)
      flash[:success] = "Your post has been created!"
      redirect_to posts_path
    else
      flash[:alert] = "Your new post couldn't be created!  Please check the form."
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
