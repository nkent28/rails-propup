class Review < ApplicationRecord
  belongs_to :booking
  has_one :user, through: :bookings
  has_one :prop, through: :bookings
  has_many_attached :photos
  validates :name, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
