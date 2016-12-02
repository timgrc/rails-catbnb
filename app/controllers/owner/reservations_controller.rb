class Owner::ReservationsController < ApplicationController
  before_action :find_reservation, only: [:accept, :decline]

  def accept
    @rental.update(status: 'accepted')
  end

  def decline
    @rental.update(status: 'declined')
  end

  private

  def find_reservation
    @rental = Reservation.find(params[:id])
  end
end
