class BookmarksController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    current_user.bookmark(@post)
    respond_to do |format|
      format.html { redirect_to request.referer }
      format.turbo_stream
    end
  end

  def destroy
    @post = current_user.bookmarks.find(params[:id]).post
    current_user.unbookmark(@post)
    respond_to do |format|
      format.html { redirect_to request.referer, status: :see_other }
      format.turbo_stream
    end
  end
end
