class Review < ApplicationRecord
  belongs_to :car

  # don't need to validate id's because db schema already specifies null=false
  # validates :car_id, presence: true, uniqueness: { scope: :car_id }
  validates :comment, presence: true, length: { minimum: 6, too_short: "must have at least 6 characters" }
  validates :rating, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
end
