class AddSummaryToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :summary, :string
  end
end
