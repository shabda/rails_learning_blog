class AddPostTypeToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :post_type, :boolean
  end
end
