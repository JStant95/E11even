class Game < ApplicationRecord
  has_many :gamers
  has_many :users, through: :gamers
  has_many :pools
end
