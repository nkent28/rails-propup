class Review < ApplicationRecord
  belongs_to :bookings
  has_one :user, through: :bookings
  has_one :prop, through: :bookings
  has_many_attached :photos
  validates :name, :content, :rating, presence: true
end
