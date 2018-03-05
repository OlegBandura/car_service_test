class ServicesController < ApplicationController

  def index

  end

  def show

  end

  def new
    @car = Car.all
    @categories = Category.order(:category_name)
    @year = Array[]
    Time.current.year.downto(1970) { |n| @year.push(n) }
  end

  def create
    render plain: car_params
  end

  private

  def car_params
    params.require(:service).permit(:brand_id, :model_id, :car_year,
      :category_id, :text_destroy)
  end
end
