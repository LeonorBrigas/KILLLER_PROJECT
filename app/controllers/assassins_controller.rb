class AssassinsController < ApplicationController
  def index
    @assassins = Assassin.all
  end

  def show
    @assassin = Assassin.find(params[:id])
  end

  def new
    @assassin = Assassin.new
  end

  def create
    @assassin = Assassin.new(assassin_params)
    @assassin.save
    if @assassin.save
      redirect_to assassin_path(@assassin)
    else
      render :new
    end
  end

  private

  def assassin_params
    params.require(:assassin).permit(:first_name, :last_name)
  end
end
