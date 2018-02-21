class CommentsController < ApplicationController
  def create
    @coordinate = Coordinate.find(params[:coordinate_id])
    @comment = @coordinate.comments.build(comment_params)
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to coordinate_path(@coordinate), notice: '投稿できませんでした...' }
      end
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:coordinate_id, :content)
  end
end
