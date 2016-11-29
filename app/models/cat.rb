class Cat < ApplicationRecord
  has_many :reservations
  has_many :houses, through: :reservations
  has_many :houses

  validates :name, presence: true
end
