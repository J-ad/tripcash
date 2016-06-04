class Trip < ApplicationRecord
  has_many :members
  has_many :expences
end
