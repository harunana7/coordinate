class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to coordinate_path(@comment.coordinate)
    else
      @coordinate = @comment.coordinate
      @comments = @coordinate.comments
      render "coordinates/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, coordinate_id: params[:coordinate_id])
  end
end
