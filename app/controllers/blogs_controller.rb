class BlogsController < ApplicationController
  
  respond_to :html
  
  def index
    @blogs = Blog.find(:all, :conditions => {:post_type=>true})
  end

  def show
    @blog = Blog.find(params[:id])
    @comment = @blog.comments.new
    @comments = @blog.comments.all
    
  end

  def new
    @blog = Blog.new
  end


  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(params[:blog])
    @blog.post_type = true
    @blog.published_on ||= Time.now
    if @blog.save
      redirect_to @blog, notice: 'Blog was successfully created.'
    else
      render action: "new" 
    end
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(params[:blog])
      redirect_to @blog, notice: 'Blog was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_url
  end

end
