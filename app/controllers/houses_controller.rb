class HousesController < ApplicationController
  before_action :find_house, only: [:show]

  def index
    if params[:location].nil?
      @location = nil
      @houses = House.all
    else
      @location = params[:location]
      @houses = House.near(@location, 100)
    end
  end

  def show
    @reservation = Reservation.new
  end

  private

  def find_house
    @house = House.find(params[:id])
  end
end
