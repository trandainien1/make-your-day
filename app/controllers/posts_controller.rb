class PostsController < ApplicationController
  before_action :set_post, only: [:show]
  # def index
  # end

  def create
    @post = Post.new(post_params)
    if @post.save
      render 'page/home', status: :created
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
     
  end

  def update

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
