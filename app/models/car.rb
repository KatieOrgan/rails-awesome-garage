class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews
  has_many :favourites


  validates :brand, :model, :fuel, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :owner_id, presence: true

end

# if we had has_many :reviews, dependent: destroy
# this means if we dleete a car, all favouries
# associated with it will be deleted from the db too
