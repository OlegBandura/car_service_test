class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @car = Car.all
    @categories = Category.order(:category_name)
    @year = Array[]
    Time.current.year.downto(1970) { |n| @year.push(n) }
  end

  def create
    @car_form = Array[]
    @car_form.push(car_params)
    # render plain: car_form
    redirect_to services_path
  end

  private

  def car_params
    params.require(:service).permit(:brand_id, :model_id, :car_year,
      :category_id, :text_destroy)
  end
end
