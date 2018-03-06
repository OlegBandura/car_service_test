class Admin::CarsController < Admin::BaseController
  load_and_authorize_resource
  def new
    @brands = Brand.all
  end

  def create
    @brand = Brand.find(brand_p[:brand_id])
    @brand.cars.create(car_params)
    redirect_to admin_brands_path
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to admin_brands_path
    else
      render action 'edit'
    end
  end

  def destroy
    car = Car.find(params[:id])
    car.destroy
    redirect_to admin_brands_path
  end

  private

  def brand_p
    params.require(:car).permit(:brand_id)
  end

  def car_params
    params.require(:car).permit(:model)
  end
end
