class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, only: [:show]

  def category 
    @posts = Post.where(category_id: params[:category_id])
    @categories = Category.titles
    render 'page/home'
  end

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
    @categories = Category.titles
  end
  
  def edit

  end

  def show
    if user_signed_in? 
      @bookmark = @post.bookmarks.find_by(user_id: current_user.id)
      @comment = Comment.new
    end 
    @comments = Comment.latest_comments.where(post_id: @post.id)
  end
  

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: "Post was successfully deleted."
  end

  def search
    @posts = Post.where("title like ?", "%#{params[:query]}%")
    @categories = Category.titles
    render 'page/home'
  end

  private

  def set_post
    @post = Post.find(params[:id])
    @categories = Category.titles
  end

  def post_params 
    params.require(:post).permit([:title, :description, :image, :user_id, :category_id])
  end

end
