class PagesController < ApplicationController
  skip_before_action :authenticate_cat!, only: :home

  def home
    @house  = House.new
    @houses = House.all.sample(3)
  end
end
