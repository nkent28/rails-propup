class Booking < ApplicationRecord
  belongs_to :prop
  belongs_to :user
end
