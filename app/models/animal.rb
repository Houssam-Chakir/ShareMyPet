class Animal < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  validates :name, presence: true
  validates :price_hour, presence: true
  validates :image, presence: true
end
