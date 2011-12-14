class PriceFile < ActiveRecord::Base
  validates :title, :presence => true
  has_attached_file :attachment
end
