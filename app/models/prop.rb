class Prop < ApplicationRecord
  belongs_to :users
  has_many :bookings
  has_many_attached :photos
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  # validates :photos, presence: true
  # validation for availablity?
end
