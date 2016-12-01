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

    # @houses = House.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@houses) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
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
