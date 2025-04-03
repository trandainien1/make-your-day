class PageController < ApplicationController
  def home
    @posts = Post.latest_posts 
  end 
end
