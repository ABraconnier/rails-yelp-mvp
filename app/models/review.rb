class Review < ApplicationRecord
  validates :content, :rating, presence: true
  validates :rating, format: { with: /\A[0-5]\z/ }
  validates :rating, numericality: { only_integer: true }
  belongs_to :restaurant
end
