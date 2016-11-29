class HousesController < ApplicationController
  before_action :find_house, only: [:show]

  def index
    @houses = House.all
  end

  def show
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to house_path(@house)
    else
      render "new"
    end
  end

  private
  def house_params
    params.require(:house).permit(:name, :address, :kind, :capacity, :price)
  end

  def find_house
    @house = House.find(params[:id])
  end
end
