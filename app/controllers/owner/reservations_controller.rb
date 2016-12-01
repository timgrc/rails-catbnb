class Owner::ReservationsController < ApplicationController

  def index
    @current_cat_rentals = current_cat.rentals
  end
end
