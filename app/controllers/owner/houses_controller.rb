class Owner::HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :destroy]

  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to house_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @house.update(house_params)
      redirect_to house_path
    else
      render 'edit'
    end
  end

  def destroy
    @house.destroy
  end

  private

  def house_params
    params.require(:house).permit(
      :name,
      :address,
      :kind,
      :capacity,
      :price,
      :catnip,
      :photo,
      :description
    )
  end

  def set_house
    @house = House.find(params[:id])
  end
end
