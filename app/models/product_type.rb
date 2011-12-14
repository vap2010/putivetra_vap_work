class ProductType < ActiveRecord::Base
  validates :title, :presence => true
end
