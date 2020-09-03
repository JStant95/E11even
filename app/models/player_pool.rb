class PlayerPool < ApplicationRecord
  belongs_to :pool
  belongs_to :player
  belongs_to :picked_by
end
