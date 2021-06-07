class GuidesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_guide, only: [:show, :edit, :update, :destroy]

  def index
    @guides = Guide.all
  end

  def new
    if params[:back]
      @guide = Guide.new(guide_params)
      5.times { @guide.pictures.build }
    else
      @guide = Guide.new
      5.times { @guide.pictures.build }
    end
  end

  def create
    @guide = current_user.guides.build(guide_params)
    if params[:back]
      render :new
    else
      if @guide.save
        redirect_to guides_path, notice: I18n.t('views.messages.create_guide')
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @guide.update(guide_edit_params)
      redirect_to guides_path, notice: I18n.t('views.messages.update_guide')
    else
      render :edit
    end
  end

  def destroy
    @guide.destroy
    redirect_to guides_path, notice: I18n.t('views.messages.destroy_guide')
  end

  private

  def guide_params
    params.require(:guide).permit(:title, :content, :prefecture, :address, :note, :user_id, pictures_attributes: [:id, :image, :main_flag])
  end

  def guide_edit_params
    params.require(:guide).permit(:title, :content, :prefecture, :address, :note, :user_id, pictures_attributes: [:id, :image, :image_cache, :main_flag])
  end

  def set_guide
    @guide = Guide.find(params[:id])
  end
end
