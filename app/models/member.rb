class Member < ApplicationRecord
  has_many :trips
  has_many :expences
end
