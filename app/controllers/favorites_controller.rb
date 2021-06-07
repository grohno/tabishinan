class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = current_user.favorites.all
  end

  def create
    favorite = current_user.favorites.create(guide_id: params[:guide_id])
    redirect_to guide_path(params[:guide_id]), notice: I18n.t('views.messages.register_favorite')
  end

  def destroy
    guide_id = current_user.favorites.find_by(id: params[:id]).guide_id
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to guide_path(guide_id), notice: I18n.t('views.messages.delete_favorite')
  end
end
