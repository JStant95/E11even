class Game < ApplicationRecord
  has_many :gamers
  has_many :users, through: :gamers
end