class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :if_not_admin
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.select(:id, :name, :image).order(created_at: :asc).page(params[:page]).per(5)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    if @user.destroy
      redirect_to admin_users_path, notice: I18n.t('views.messages.destroy_user')
    else
      redirect_to admin_users_path, notice: I18n.t('views.messages.cannot_destroy_user')
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :self_introduction, :image, :image_cache)
  end

  def if_not_admin
    redirect_to guides_path, notice: I18n.t('views.messages.cannot_access_admin') unless admin?
  end
end
