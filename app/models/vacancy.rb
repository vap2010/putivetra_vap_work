class Vacancy < ActiveRecord::Base
  validates :title, :presence => true
end
