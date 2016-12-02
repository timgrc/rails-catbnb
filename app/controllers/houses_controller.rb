class HousesController < ApplicationController
  before_action :find_house, only: [:show]
  skip_before_action :authenticate_cat!, only: [:index, :show]

  def index
    if params[:location].nil? || params[:location].empty?
      @location = nil
      @houses   = House.all
    else
      @location = params[:location]
      @houses   = House.near(@location, 100)
    end

    if params[:arrival_date].nil? || params[:arrival_date].nil? || params[:departure_date].empty? || params[:departure_date].empty?
      @arrival_date   = nil
      @departure_date = nil
    else
      @arrival_date   = params[:arrival_date]
      @departure_date = params[:departure_date]
    end

    if params[:nb_cats].nil? || params[:nb_cats].empty?
      @nb_cats = nil
    else
      @nb_cats = params[:nb_cats].to_i
    end

    session[:search_params] = params
    # @houses = House.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@houses) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @reservation = Reservation.new
    @houses = []
    @houses << @house

    @hash = Gmaps4rails.build_markers(@houses) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
    end
  end

  private

  def find_house
    @house = House.find(params[:id])
  end
end
