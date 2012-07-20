class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :post
      t.string :title
      t.string :slug

      t.timestamps
    end
  end
end
