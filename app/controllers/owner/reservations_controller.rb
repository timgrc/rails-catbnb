class Owner::ReservationsController < ApplicationController
  before_action :find_reservation, only: [:accept, :decline]

  def accept
    @rental.update(status: 'accepted')
    redirect_to reservations_path
  end

  def decline
    @rental.update(status: 'declined')
    redirect_to reservations_path
  end

  private

  def find_reservation
    @rental = Reservation.find(params[:id])
  end
end
