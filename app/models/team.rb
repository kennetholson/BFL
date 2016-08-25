class Team < ApplicationRecord
  has_many :users
  has_many :rankings
  has_many :games
end
