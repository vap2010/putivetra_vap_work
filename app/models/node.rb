class Node < ActiveRecord::Base
  belongs_to :nodeable, :polymorphic => true
  has_ancestry
end
