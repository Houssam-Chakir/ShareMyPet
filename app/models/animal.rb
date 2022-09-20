class Animal < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :price_hour, presence: true
end
