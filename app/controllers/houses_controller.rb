class HousesController < ApplicationController
  before_action :find_house, only: [:show]

  def index
    @houses = House.all
  end

  def show
    @reservation = Reservation.new
  end

  private

  def find_house
    @house = House.find(params[:id])
  end
end
