class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to request.referer, alert: "Create comment successfully"
    else
      redirect_to request.referer, alert: @comment.errors.full_messages[0]
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to request.referer
  end

  private

  def comment_params
    params.require(:comment).permit([:content, :user_id, :post_id])
  end
end
