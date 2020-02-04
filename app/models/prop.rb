class Prop < ApplicationRecord
  belongs_to :users
  has_many :bookings
  has_many :photos
  has_many_attached :photos
end
