class CarsController < ApplicationController

  def new
    @brands = Brand.all
  end

  def create
  # render plain: params[:car_form]

    @auto = Car.new(auto_params)
      @auto.save
      render action: 'new'
  end

  private
  def auto_params
    params.require(:car_form).permit(:id_brand, :model)
  end
end
