class AutoservicesController < ApplicationController
  def new
  end

  def create
    render plain: params[:autoservices]
  end
end
