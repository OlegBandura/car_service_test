class CarsController < ApplicationController
  def index

  end

  def new
    @brands = Brand.all

  end

  def create
  # render plain: params[:car_form]
    @auto = Car.new(auto_params)
      @auto.save
       render action: 'new'
  end

  # def edit
  #   @car = Car.find(params[:id])
  # end
  # def update
  #   @car = Car.find(params[:id])
  #   if @car.update(brand_params)
  #     redirect_to @car
  #   else
  #     render action 'edit'
  #   end
  # end

  def destroy
    @car.destroy
    redirect_to brands_path
  end

  private
  def auto_params
    params.require(:car_form).permit(:id_brand, :model)
  end
end
