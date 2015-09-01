class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only:[:show, :edit, :update, :destroy]
  before_action :owned_post, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      flash[:success] = "Your post has been created!"
      redirect_to posts_path
    else
      flash[:alert] = "Your new post couldn't be created!  Please check the form."
      render :new
    end
  end

  def edit
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

  def owned_post
    unless current_user == @post.user
      flash[:alert] = "That post isn't yours!"
      redirect_to root_path
    end
  end

end
