class ReservationsController < ApplicationController
before_action :authenticate_user!

  def create
    @assassin = Assassin.find(params[:assassin_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.assassin = @assassin
    @reservation.user = current_user
     if @reservation.save
      redirect_to assassin_path(@assassin)
     else
      render :new
     end
  end

  def index
    @reservations = Reservation.where(user_id: current_user.id)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :description)
  end
end
