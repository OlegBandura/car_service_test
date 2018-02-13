class ServicesController < ApplicationController
  def new
  end

  def create
    render plain: params[:service]
  end
end
