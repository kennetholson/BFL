class Team < ApplicationRecord
  has_many :users
  has_one :ranking
  belongs_to :game
end
