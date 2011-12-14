class ProductType < ActiveRecord::Base
  validates :title, :presence => true
  has_many :brand_product_type, :dependent => :destroy
  has_many :brands, :through => :brand_product_type
  has_many :brand_regions, :dependent => :destroy
  has_many :regions, :through => :brand_regions
end
