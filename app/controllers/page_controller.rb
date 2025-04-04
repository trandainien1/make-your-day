class PageController < ApplicationController
  def home
    @posts = Post.latest_posts
  end

  def bookmark
    console
    post_ids = Bookmark.where(user_id: current_user.id).pluck(:post_id)
    @posts = Post.where(id: post_ids)
    render :home
  end
end
