class PagesController < ApplicationController
  def home
    @houses = House.all
  end
end
