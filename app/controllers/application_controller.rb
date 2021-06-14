class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  include UsersHelper

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :self_introduction, :image])
  end

  def after_sign_in_path_for(resource)
    if current_user.admin?
      admin_users_path
    else
     guides_path
    end
  end
end
