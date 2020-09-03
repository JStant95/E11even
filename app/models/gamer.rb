class Gamer < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :player_pools
  has_many :players, through: :player_pools
  # has_one :pool, through: :player_pools
end
