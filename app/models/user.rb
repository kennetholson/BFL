class User < ApplicationRecord
has_many :stats
belongs_to :team
has_secure_password
end
