class Event < ActiveRecord::Base
  include Metatagable
  validates :title, :presence => true
  has_many :project_events, :dependent => :destroy
  has_many :projects, :through => :project_events
end
