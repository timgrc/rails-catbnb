class HousesController < ApplicationController
  before_action :find_house, only: [:show]

  def index
    @houses = House.all
  end

  def show
  end

  private

  def find_house
    @house = House.find(params[:id])
  end
end
