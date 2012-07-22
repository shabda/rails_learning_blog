class Comment < ActiveRecord::Base
  attr_accessible :blog_id, :text, :author_name
  validates :text, presence: true
  validates :blog_id, presence: true
  validates :author_name, presence: true
  
  belongs_to :blog
end
