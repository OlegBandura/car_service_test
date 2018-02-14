class CarsController < ApplicationController

  def new
  end

  def create
    @auto = Car.new(auto_marka_params)
    if @auto.valid?
      @auto.save
    else
      render action: 'new'
    end
  end

  private
  def auto_marka_params
    params.require(:car).permit(:marka)
  end
end
