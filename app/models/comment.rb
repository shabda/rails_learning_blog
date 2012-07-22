class Comment < ActiveRecord::Base
  attr_accessible :blog_id, :text
  validates :text, presence: true
  validates :blog_id, presence: true
  
  belongs_to :blog
end
