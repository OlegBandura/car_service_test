class AutoservicesController < ApplicationController
  def new
  end

  def create
    @autoservice = Service.new(autoservice_params)
    @autoservice.save
  end

  private
  def autoservice_params
    params.require(:autoservice).permit(:name_service, :address)
  end


end
