class CarsController < ApplicationController

  def new
  end

  def create
    @auto = Auto.new(auto_params)
    @auto.save
  end

  private
  def auto_params
    params.require(:car).permit(:marka, :model, :autoYear)
  end
end
