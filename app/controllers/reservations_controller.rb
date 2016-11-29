class ReservationsController < ApplicationController
  before_action :find_house, only: [ :new, :create ]

  def new
    @arrival_date = Date.new(2016,12,23)
    @departure_date = Date.new(2016,12,29)
    @nb_nights = (@departure_date - @arrival_date).to_i
    @reservation = Reservation.new(arrival_date: @arrival_date, departure_date: @departure_date)
    @service_costs = @house.price * 10/100
    @ttc_price = @house.price + @service_costs
    @total_price = @ttc_price * @nb_nights
  end

  def create
    @reservation = @house.reservation.build(reservation_params)
    @reservation.save
  end

  private

  def reservation_params
    params.require(:reservation).permit(
      :arrival_date,
      :departure_date,
      :nb_cats
      )
  end

  def find_house
    @house = House.find(params[:house_id])
  end
end
