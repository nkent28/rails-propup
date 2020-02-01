class Review < ApplicationRecord
  belongs_to :bookings
  has_one :user, through: :bookings
  has_one :prop, through: :bookings

  validates :name, :content, :rating, presence: true

end
