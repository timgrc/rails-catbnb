class HousesController < ApplicationController
  before_action :set_house, only: [:show]

  def show
  end

  private

  def set_house
    @house = House.find(params[:id])
  end
end
