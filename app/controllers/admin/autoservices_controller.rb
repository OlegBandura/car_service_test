class Admin::AutoservicesController < Admin::BaseController
  before_action :authenticate_user!
  def index
    @autoservices = Service.all
  end

  def new
  end

  def create
    @autoservice = Service.new(autoservice_params)
    if @autoservice.valid?
      @autoservice.save
      redirect_to action: 'index'
    else
      render action: 'new'
    end
  end

  def edit
    @autoservice = Service.find(params[:id])
  end
  def update
    @autoservice = Service.find(params[:id])
    if @autoservice.update(autoservice_params)
      redirect_to admin_autoservices_path
    else
      render action 'edit'
    end
  end


  def destroy
    autoservice = Service.find(params[:id])
    autoservice.destroy
    redirect_to admin_autoservices_path
  end

  private
  def autoservice_params
    params.require(:autoservice).permit(:name, :city, :address, :diler, :image, :remote_image_url)
  end
end
