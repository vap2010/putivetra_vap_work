class BrandFile < ActiveRecord::Base
  validates :title, :presence => true
  has_attached_file :attachment
end
