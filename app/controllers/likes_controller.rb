class LikesController < ApplicationController
  def create
    like = Like.new(like_params)
    if like.save
      redirect_to request.referer, notice: "Like successfully"
    else
      redirect_to request.referer, alert: "Failed to like"
    end
  end

  def destroy
    like = Like.find(params[:id])
    if like.destroy
      redirect_to request.referer, notice: "Unlike successfully"
    else
      redirect_to request.referer, notice: "Failed to unlike"
    end
  end

  private

  def like_params
    params.require(:like).permit([:user_id, :comment_id])
  end
end
