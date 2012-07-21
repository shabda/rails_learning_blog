class Blog < ActiveRecord::Base
  attr_accessible :post, :slug, :title, :post_type, :summary
  validates :post, :presence => true
  validates :slug, :presence => true
  validates :title, :presence => true
  validates :post_type, :presence => true
  validates :summary, :presence => true  
end
