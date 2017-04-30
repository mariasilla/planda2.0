class Task < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :comments
end
