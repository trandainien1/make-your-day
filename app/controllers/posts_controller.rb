class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]
  # def index
  # end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @post = Post.new
  end
  
  def edit

  end

  def show
     @bookmark = @post.bookmarks.find_by(user_id: current_user.id)
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params 
    params.require(:post).permit([:title, :description, :image, :user_id])
  end
end
