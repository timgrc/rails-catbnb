class PagesController < ApplicationController
  skip_before_action :authenticate_cat!, only: :home

  def home
    default_params = {
      'arrival_date' =>   Date.today,
      'departure_date' => Date.today + 1,
      'location' =>       '',
      'nb_cats' =>        1
    }

    session[:search_params] = default_params
    @house  = House.new
    @houses = House.all.sample(3)
  end
end
