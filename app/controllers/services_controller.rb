class ServicesController < ApplicationController
  def index
    @cars = Auto.all
  end

  def show
    @cars = Auto.all

  end

  def new
    @marka_car = Auto.find_by_sql("SELECT id, marka
      FROM autos  ORDER BY marka ASC")
    @cars = Auto.all

    # @cars = Auto.select("marka, model, autoYear").group(marka)
  end

  def create
    render plain: params[:service]
  end
end
