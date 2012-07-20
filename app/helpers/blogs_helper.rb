module BlogsHelper
  def pages_list
    @pages = Blog.find(:all, :conditions => {:post_type=>false})
  end
end
