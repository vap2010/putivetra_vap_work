class Distributor < ActiveRecord::Base
  validates :title, :presence => true
end
