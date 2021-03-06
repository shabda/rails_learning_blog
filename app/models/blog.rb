class Blog < ActiveRecord::Base
  attr_accessible :post, :slug, :title, :post_type, :summary, :published_on
  validates :post, :presence => true
  validates :title, :presence => true
  validates :post_type, :presence => true  
  validates :published_on, :presence => true
  
  has_many :comments
  
  before_save do |record|
    record.slug ||= record.title.split.join("-")
    record.summary ||= record.post.split[0...10].join(" ")
  end
  
  before_validation do |record|
    record.post_type ||= true
    record.published_on ||= Time.now
  end
  
end
