class Trip < ApplicationRecord
  # has_many :users, through: :members
  has_many :expences
  has_many :members
  # validates_presence_of :member
end
