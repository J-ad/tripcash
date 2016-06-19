# main model
class Trip < ApplicationRecord
  has_many :expences
  has_many :participations
  has_many :members, through: :participations
end
