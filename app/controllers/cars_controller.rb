class CarsController < ApplicationController
  def index

  end

  def new
    @brands = Brand.all
  end

  def create
    @auto = Car.new(auto_params)
      @auto.save
       render action: 'new'
  end

  def edit
    @edit_brands = Brand.find(params[:id])

  end

  def update
    @cars = Brand.find(params[:id])
    @car = Brand.find(params[@cars])

    if @car.update(auto_params)
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
