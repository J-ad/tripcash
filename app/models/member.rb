# describes trip members. TODO:  Member can belong to signed in user
class Member < ApplicationRecord
  has_many :participations
  has_many :trips, through: :participations
  has_many :expences
end
