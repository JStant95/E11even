class User < ApplicationRecord
  has_many :gamers
  has_many :games, through: :gamers
end
