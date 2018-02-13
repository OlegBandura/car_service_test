class CarsController < ApplicationController

  def new
  end

  def create
    @auto = Auto.new(auto_params)
    if @auto.valid?
      @auto.save
    else
      render action: 'new'
    end
  end

  private
  def auto_params
    params.require(:car).permit(:marka, :model, :autoYear)
  end
end
