class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages, dependent: :destroy
  has_many :bookings
  has_one_attached :photo
  validates :photo, presence: true
  has_many :props
  has_many :reviews, through: :bookings
end
