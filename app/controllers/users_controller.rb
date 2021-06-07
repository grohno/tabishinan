class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    @guides = @user.guides.page(params[:page]).per(5)
  end

  def edit
    if @user.id != current_user.id
      redirect_to user_path(@user.id)
    end
  end

  def update
    if @user.update(user_edit_params)
      sign_in(@user, bypass: true) if current_user.id == @user.id
      redirect_to user_path(@user.id), notice: I18n.t('views.messages.update_user')
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to destroy_user_session_path, notice: I18n.t('views.messages.destroy_user')
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :self_introduction, :image)
  end

  def user_edit_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :self_introduction, :image, :image_cache)
  end
end
