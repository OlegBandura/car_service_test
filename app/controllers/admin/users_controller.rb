class Admin::UsersController < Admin::BaseController
  def new
    @users = User.all
  end

  def create

  end
end
