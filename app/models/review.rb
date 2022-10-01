class Review < ApplicationRecord
  belongs_to :animal
  validates :content, length: {minimum: 20}
end
