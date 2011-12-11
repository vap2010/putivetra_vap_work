class Article < ActiveRecord::Base
  include Metatagable
  belongs_to :parent, :class_name => 'Article'
  has_many :children, :class_name => 'Article', :order => 'position', :foreign_key => :parent_id, :dependent => :destroy
  belongs_to :project
  validates :project_id, :title, :presence => true
end
