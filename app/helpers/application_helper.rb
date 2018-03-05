module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @device_mapping ||= Device.mappings[:user]
  end

end
