class User < ApplicationRecord
  # has_secure_password
  has_many :gamers
  has_many :games, through: :gamers
  validates_presence_of :name, :username, :email, :password
end
