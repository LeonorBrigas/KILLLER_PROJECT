class AssassinsController < ApplicationController
  def index
    @assassins = Assassin.geocoded # returns assassins with coordinates
    @markers = @assassins.map do |assassin|
      {
        lat: assassin.latitude,
        lng: assassin.longitude
      }
    end
  end

  def show
    @assassin = Assassin.find(params[:id])
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
    params.require(:assassin).permit(:first_name, :last_name, :photo, :total_kills, :has_gun, :has_knife, :has_candlestick, :has_wrench, :has_rope, :summary, :price, :city)
  end
end
