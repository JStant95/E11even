class Game < ApplicationRecord
  has_many :gamers
  has_many :users, through: :gamers
  has_one :pool
  has_many :player_pools, through: :pool
end
