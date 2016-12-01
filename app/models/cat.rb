class Cat < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Get owner's reservations through its houses
  has_many :houses
  has_many :rentals, through: :houses, source: :reservations

  # Get traveler's reservations
  has_many :reservations

  mount_uploader :profile_picture, PhotoUploader

  validates :name, presence: true
end
