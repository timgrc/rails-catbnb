class Reservation < ApplicationRecord
  belongs_to :cat
  belongs_to :house

  validates :arrival_date,   presence: true
  validates :departure_date, presence: true
  validates :nb_cats,        presence: true
  validates :price,          presence: true
  validates :status,         presence: true, inclusion: { in: ['pending', 'accepted', 'declined'], allow_nil: false }

  def mark_as_accepted
  end

  def mark_as_declined
  end
end
