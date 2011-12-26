class Category < ActiveRecord::Base
  has_one :album, :dependent => :destroy, :as => :albumable
  belongs_to :parent, :class_name => 'Category'
  has_many :children, :class_name => 'Category', :foreign_key => :parent_id

  before_create :build_album
end
