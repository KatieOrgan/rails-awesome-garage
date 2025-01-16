class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews
  has_many :favourites

  has_one_attached :photo

  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :fuel, presence: true
  validates :owner_id, presence: true

end
