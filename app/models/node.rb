class Node < ActiveRecord::Base
  belongs_to :project
  belongs_to :nodeable, :polymorphic => true
  validates :project_id, :presence => true
end
