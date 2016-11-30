class PagesController < ApplicationController
  def home
    @house = House.new
    @houses = House.all
  end
end
