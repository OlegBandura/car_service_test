class Admin::BaseController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

end
