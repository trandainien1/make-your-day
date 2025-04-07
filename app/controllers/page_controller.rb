class PageController < ApplicationController
  def home
    @posts = Post.latest_posts
    @categories = Category.titles
  end

  def bookmark
    post_ids = Bookmark.where(user_id: current_user.id).pluck(:post_id)
    @posts = Post.where(id: post_ids).latest_posts
    @categories = Category.titles
  end 

  def bookmark_category
    
    post_ids = Bookmark.where(user_id: current_user.id).pluck(:post_id)
    @posts = Post.where(id: post_ids)
    @posts = @posts.where(category_id: params[:category_id])
    @categories = Category.titles
    render :bookmark
  end

  
end
