class Article < ActiveRecord::Base
  include Metatagable
  include Nodeable
  belongs_to :parent, :class_name => 'Article'
  has_many :children, :class_name => 'Article', :order => 'position', :foreign_key => :parent_id, :dependent => :destroy
  belongs_to :project
  validates :project_id, :title, :presence => true

  class << self
    def roots
      where(:parent_id => nil)
    end
  end
end
