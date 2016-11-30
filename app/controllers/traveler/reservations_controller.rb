class Traveler::ReservationsController < ApplicationController
  before_action :find_reservation, only: [:confirmation]
  def confirmation
  end

  private

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end
end
