class ReservationsController < ApplicationController
  before_action :find_house, only: [ :new, :create ]

  def new
    arrival_date = Date.new(2016,12,22)
    departure_date = Date.new(2016,12,29)
    @nb_nights = (departure_date - arrival_date).to_i
    @service_costs = @house.price * 10/100
    @ttc_price = @house.price + @service_costs
    @price = @ttc_price * @nb_nights
    @reservation = Reservation.new(arrival_date: arrival_date, departure_date: departure_date, price: @price)
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.house = @house
    @reservation.cat   = current_cat
    if @reservation.save
      redirect_to confirmation_traveler_reservation_path
    else
      render 'new'
    end
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
