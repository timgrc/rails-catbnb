class ReservationsController < ApplicationController
  before_action :find_house, only: [ :new, :booking, :create ]

  def new
    raise
    arrival_date   = Date.new(2016,12,22)
    departure_date = Date.new(2016,12,29)
    # @reservation = Reservation.new(reservation_params)
  end

  def booking
    @reservation = Reservation.new(reservation_params)
    redirect_to new_house_reservation_path(@house)
  end

  def create
    # @nb_nights     = (params[:departure_date] - params[:arrival_date]).to_i
    @nb_nights     = 3
    @service_costs = @house.price * 10/100
    @ttc_price     = @house.price + @service_costs
    price          = @ttc_price * @nb_nights


    @reservation = Reservation.new(reservation_params)
    @reservation.price = price
    @reservation.house = @house
    @reservation.cat   = current_cat
    if @reservation.save
      redirect_to confirmation_traveler_reservation_path(@reservation)
    else
      render 'new'
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(
      :arrival_date,
      :departure_date,
      :nb_cats,
      :price
    )
  end

  def find_house
    @house = House.find(params[:house_id])
  end
end
