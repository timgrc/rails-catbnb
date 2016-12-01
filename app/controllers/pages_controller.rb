class PagesController < ApplicationController
  def home
    @house  = House.new
    @houses = House.all.sample(3)
  end
end
