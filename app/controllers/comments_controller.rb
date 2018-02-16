class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  layout "blog"
  access user: {except: [:show, :destroy, :update, :edit]}, site_admin: :all

  def create
    @comment = current_user.comments.build(comment_params)
  end

  
  # def edit
  # end

  # def show
  #   def show
  #   if logged_in?(:site_admin) || @blog.published?
  #     @blog = Blog.includes(:comments).friendly.find(params[:id])
  #     @comment = Comment.new

  #     @page_title = @blog.title
  #     @seo_keywords = @blog.body
  #   else
  #     redirect_to blogs_path, notice: "You are not authorized to access this page"
  #   end
  # end
  # end

  # def update
  #   respond_to do |format|
  #     if @comment.update(comment_params)
  #       format.html { redirect_to blogs_path, notice: 'Comment was successfully updated.' }
  #     else
  #       format.html { render :show }
  #     end
  #   end
  # end

  # def destroy
  #   @comment.destroy
  #   respond_to do |format|
  #     format.html { redirect_to blogs_path, notice: 'Comment was removed.' }
  #     format.json { head :no_content }
  #   end
  # end

   def set_comment
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
