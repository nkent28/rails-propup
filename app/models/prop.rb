class Prop < ApplicationRecord
  belongs_to :users
  has_many :bookings
  has_many :photos
end
