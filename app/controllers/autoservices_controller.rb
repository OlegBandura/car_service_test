class AutoservicesController < ApplicationController
  def new
  end

  def create
    @autoservice = Service.new(autoservice_params)
    if @autoservice.valid?
      @autoservice.save
    else
      render action: 'new'
    end
  end

  private
  def autoservice_params
    params.require(:autoservice).permit(:name, :city, :address, :diler)
  end
end
