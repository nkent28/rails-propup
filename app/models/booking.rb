class Booking < ApplicationRecord
  belongs_to :prop
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_one :chatroo
  validates :start_date, presence: true
  validates :end_date, presence: true
end
