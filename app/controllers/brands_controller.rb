class BrandsController < ApplicationController
  def index
    @brands = Brand.all
    @cars = Car.find_by_sql("SELECT brands.brand, cars.model
                              FROM brands, cars
                              WHERE brands.id = cars.id_brand")
  end

  def new
  end

  def create
    @brand = Brand.new(brand_params)
    @brand.save
    redirect_to brands_path
  end

  def edit
    @brand = Brand.find(params[:id])
  end
  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      redirect_to @brand
    else
      render action 'edit'
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    redirect_to brands_path
  end

  private
  def brand_params
    params.require(:brand).permit(:brand)
  end
end
