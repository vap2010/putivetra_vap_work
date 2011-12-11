class Article < ActiveRecord::Base
  belongs_to :parent, :class_name => 'Article'
  has_many :children, :class_name => 'Article', :order => 'position', :foreign_key => :parent_id, :dependent => :destroy
  belongs_to :project
  validates :prject_id, :presence => true
end
