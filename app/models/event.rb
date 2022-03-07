class Event < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy

  CATEGORIES = ["Supper Club", "Fine Dine", "Private Hire", "Brunch"]
end
