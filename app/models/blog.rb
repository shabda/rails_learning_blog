class Blog < ActiveRecord::Base
  attr_accessible :post, :slug, :title
end
