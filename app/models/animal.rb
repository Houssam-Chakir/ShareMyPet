class Animal < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :photo, presence: true
  validates :name, presence: true
  validates :price_hour, presence: true

end
