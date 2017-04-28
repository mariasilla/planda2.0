class Team < ApplicationRecord
  has_many :groupings
  has_many :users, through: :groupings
end
