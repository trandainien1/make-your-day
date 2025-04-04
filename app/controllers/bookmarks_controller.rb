class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save()
      redirect_to request.referer, notice: "Bookmark successfully"
    else
      redirect_to request.referer, alert: "Failed to bookmark"
    end
  end
  def destroy
    bookmark = Bookmark.find_by(params[:id])
    if bookmark.destroy()
      redirect_to request.referer, notice: "Unbookmark successfully"
    else
      redirect_to request.referer, notice: "Failed to unbookmark"
    end
  end

  private

  def bookmark_params 
    params.require(:bookmark).permit([:user_id, :post_id])
  end
  
end
