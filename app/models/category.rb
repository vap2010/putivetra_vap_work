class Category < ActiveRecord::Base
  has_one :album
  belongs_to :parent, :class_name => 'Category'
  has_many :children, :class_name => 'Category', :foreign_key => :parent_id
end
