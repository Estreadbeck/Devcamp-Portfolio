class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
  end

  private

  def commen_params
    params.require(:comment).permit(:content)
  end
end
