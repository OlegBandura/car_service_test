class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_param)
    end
    redirect_to admin_users_path
  end

  private

  def user_param
    params.require(:user).permit(:admin)
  end
end
