class ReservationsController
  before_action :find_house, only: [ :new, :create ]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = @house.reservation.build(reservation_params)
    @reservation.save
  end

  private

  def reservation_params
    params.require(:reservation).permit(
      :arrival_date,
      :departure_date,
      :nb_cats
      )
  end


  def find_house
    @house = House.find(params[:house_id])
  end
end
