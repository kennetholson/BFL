class User < ApplicationRecord
has_one :stat
belongs_to :team

end
