class BrandsController < ApplicationController
  def index
    @brands = Brand.all

    cars_ = Car.find_by_sql("SELECT cars.id, cars.id_brand, brands.brand, cars.model
                              FROM brands LEFT JOIN cars
                              ON brands.id = cars.id_brand")
    @cars  = Hash.new{|hsh,key| hsh[key] = [] }
    cars_.each do |car|
      @cars[car["brand"]].push(car)
    end
  end

  puts "_______________________________"
  puts @cars
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
      redirect_to brands_path
    else
      render action 'edit'
    end
  end

  def destroy
    @c = Brand.find(params[:id])
    @a = Car.find_by_sql("DELETE FROM cars WHERE id_brand = #{@c["id"]}")
    @c.destroy
    redirect_to brands_path
  end

  private
  def brand_params
    params.require(:brand).permit(:brand)
  end
end
