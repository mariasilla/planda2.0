class Team < ApplicationRecord
  has_many :groupings, :dependent => :delete_all
  has_many :tasks, :dependent => :delete_all
  has_many :users, through: :groupings, :dependent => :delete_all
end
