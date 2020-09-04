class Pool < ApplicationRecord
  belongs_to :game
  has_many :player_pools
  has_many :players, through: :player_pools
end
