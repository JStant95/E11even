class Game < ApplicationRecord
  has_many :gamers
  has_many :users, through: :gamers
  has_one :pools
  has_many :player_pools, through: :pools
end
