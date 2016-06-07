class Member < ApplicationRecord
  belongs_to :trip
  has_many :expences
end
