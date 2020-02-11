class Prop < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  validates :photos, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  # validates :photos, presence: true
  # validation for availablity?
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
