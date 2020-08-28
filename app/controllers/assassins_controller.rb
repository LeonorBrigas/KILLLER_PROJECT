class AssassinsController < ApplicationController
  def index
    @assassins = Assassin.geocoded # returns assassins with coordinates
    @markers = @assassins.map do |assassin|
      {
        lat: assassin.latitude,
        lng: assassin.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { assassin: assassin }),
        image_url: assassin.url
      }
    end
  end

  def show
    @assassin = Assassin.find(params[:id])
    @reservation = Reservation.new
    @review = Review.new
    @reviews = @assassin.reviews
    if user_signed_in?
      @user_reservations = current_user.reservations.where(assassin: @assassin)
      @reservation_to_review = @user_reservations.last
      @review.reservation = @reservation_to_review
    else
      @user_reservations = []
    end
  end

  def new
    @assassin = Assassin.new
  end

  def create
    @assassin = Assassin.new(assassin_params)
    @assassin.user = current_user
    @assassin.save
    if @assassin.save
      redirect_to assassin_path(@assassin)
    else
      render :new
    end
  end

  private

  def assassin_params
    params.require(:assassin).permit(:first_name, :last_name, :photo, :total_kills, :has_gun, :has_knife, :has_candlestick, :has_wrench, :has_rope, :summary, :price, :city, :address, :url)
  end
end
