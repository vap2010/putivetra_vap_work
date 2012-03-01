class MetaTag < ActiveRecord::Base
  belongs_to :metatagable, :polymorphic => true
end
