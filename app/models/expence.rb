class Expence < ApplicationRecord
  belongs_to :trip
  belongs_to :member

  def average_trip_expences(trip)
    expences_sum = trip.sum_expences
    members_count = trip.members.count
    expences_sum/members_count
  end
end
