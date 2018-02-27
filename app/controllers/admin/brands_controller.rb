class Admin::BrandsController < Admin::BaseController
  def index
    @brands = Brand.all

    cars_ = Car.find_by_sql("SELECT cars.id, cars.brand_id, brands.brand, cars.model
                              FROM brands LEFT JOIN cars
                              ON brands.id = cars.brand_id")
    @cars = Hash.new { |hsh, key| hsh[key] = [] }
    cars_.each do |car|
      @cars[car[:brand]].push(car)
    end
  end

  def create
    @brand = Brand.create(brand_params)
    redirect_to admin_brands_path
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      redirect_to admin_brands_path
    else
      render action 'edit'
    end
  end

  def destroy
    brand = Brand.find(params[:id])
    models = Car.where(brand_id: brand.id)
    models.each do |model|
      model.destroy
    end
    brand.destroy
    redirect_to admin_brands_path
  end

  private

  def brand_params
    params.require(:brand_form).permit(:brand)
  end
end
