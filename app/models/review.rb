class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, allow_blank: false
  validates :content, presence: true, allow_blank: false
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
