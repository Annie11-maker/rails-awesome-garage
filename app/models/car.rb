class Car < ApplicationRecord
  belongs_to :owner

  has_many :favourites
  has_many :reviews

  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :fuel, presence: true

end
