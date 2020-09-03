class Player < ApplicationRecord
  has_many :pools, through: :player_pools 
end
