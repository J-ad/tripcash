# describes trip members. TODO:  Member can belong to signed in user
class Member < ApplicationRecord
  has_many :participations
  has_many :trips, through: :participations
  has_many :expences
  validates_presence_of :name, :last_name
  mount_uploader :image, ImageUploader
  def trip_expences(id)
    expences.where(trip_id: id)
  end

  def sum_expences(trip_id)
    expences = trip_expences(trip_id)
    sum = 0
    expences.each do |e|
      sum += e.ammount
    end
    sum
  end

  def full_name
    name + ' ' + last_name
  end
end
