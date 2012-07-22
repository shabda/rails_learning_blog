class AddPublishedOnToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :published_on, :date
  end
end
