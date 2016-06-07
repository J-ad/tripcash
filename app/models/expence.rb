class Expence < ApplicationRecord
  belongs_to :trip
  belongs_to :member
end
