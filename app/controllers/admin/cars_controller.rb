class Admin::CarsController < Admin::BaseController
  def new
    @brands = Brand.all
  end

  def create
    @brand = Brand.find(brand_p[:id])
    @brand.cars.create(car_params)
    # @brand = Brand.find(params[:brand_id])
    # @car = @brand.models.new(car_params)
    # @car.save
    # auto = Car.create(car_params)
    # render plain: car_params
    redirect_to admin_brands_path
  end

  def edit
    @edit_car = Car.find(params[:id])
  end

  def update
    @edit_car = Car.find(params[:id])
    if @edit_car.update(auto_params)
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
    params.require(:car_form).permit(:id)
  end
  def car_params
    params.require(:car_form).permit(:model)
  end
end
