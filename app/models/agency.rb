class Agency < ActiveRecord::Base
  validates :title, :presence => true
end
