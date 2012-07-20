class Blog < ActiveRecord::Base
  attr_accessible :post, :slug, :title, :post_type, :summary
end
