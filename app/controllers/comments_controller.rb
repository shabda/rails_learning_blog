class CommentsController < ApplicationController
  def new
  end
  def index
  end
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.new(params[:comment])
    if @comment.save
      redirect_to @blog, notice: 'Thanks for yor comments'
    else
      redirect_to @blog, notice: 'Please fix the error.'
    end
  end
end
