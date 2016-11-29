class House < ApplicationRecord
  belongs_to :cat
  has_many :reservations
  has_many :cats, through: :reservations

  validates :name,     presence: true
  validates :address,  presence: true
  validates :kind,     presence: true, inclusion: { in: ['full_house', 'dormitory', 'cat_tree'], allow_nil: false }
  validates :capacity, presence: true
  validates :price,    presence: true
end
