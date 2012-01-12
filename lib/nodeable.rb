module Nodeable
  extend ActiveSupport::Concern

  included do
    has_many :nodes, :as => :nodeable, :dependent => :nullify
  end
end
