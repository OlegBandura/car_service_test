class CarsController < ApplicationController
  def index

  end

  def new
    @brands = Brand.all
  end

  def create
    @auto = Car.new(auto_params)
      @auto.save
      redirect_to brands_path
  end

  def edit
    @edit_car = Car.find(params[:id])
  end

  def update
    @edit_car = Car.find(params[:id])
    if @edit_car.update(auto_params)
      redirect_to brands_path
    else
      render action 'edit'
    end
  end

  def destroy
    car = Car.find(params[:id])
    car.destroy
    redirect_to brands_path
  end

  private
  def auto_params
    params.require(:car_form).permit(:id_brand, :model)
  end
end
