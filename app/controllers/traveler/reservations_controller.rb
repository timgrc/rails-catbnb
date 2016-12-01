class Traveler::ReservationsController < ApplicationController
  before_action :find_reservation, only: [:confirmation]

  def index
    @houses = current_cat.houses
    @current_cat_reservations = current_cat.reservations
  end

  def confirmation
  end

  private

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end
end
