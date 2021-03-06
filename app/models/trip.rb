# main model
class Trip < ApplicationRecord
  has_many :expences
  has_many :participations
  has_many :members, through: :participations
  validates_presence_of :destination
  mount_uploader :image, ImageUploader

  def sum_expences
    trip_expences = self.expences
    sum = 0
    trip_expences.each do |e|
      sum += e.ammount
    end
    sum
  end

  def average_expences
    member_count = self.members.count
    sum_expences/member_count
  end

  def medium_image
    image_url(:medium) if image?
  end
end
