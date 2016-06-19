class Participation < ApplicationRecord
  belongs_to :member
  belongs_to :trip
end
