# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to guides_path, notice: I18n.t('views.messages.logged_in_as_guest_user')
  end

  def admin_guest_sign_in
    user = User.admin_guest
    sign_in user
    user.update(admin: true)
    redirect_to admin_users_path, notice: I18n.t('views.messages.logged_in_as_admin_guest_user')
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
