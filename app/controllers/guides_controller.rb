class GuidesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_guide, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      if params[:search_keyword].present?
        search_keyword(params[:search_keyword])
        @guides = Kaminari.paginate_array(@guides).page(params[:page]).per(5)
        @search_keyword = params[:search_keyword]
      else
        @guides = Guide.order(updated_at: :desc).page(params[:page]).per(5)
      end
    else
      @guides = Guide.order(updated_at: :desc).page(params[:page]).per(5)
    end
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
    @guide.search_field = "#{current_user.name}_#{@guide.title}_#{@guide.content}_#{@guide.address}_#{@guide.note}_#{@guide.prefecture}"
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
    @favorite = current_user.favorites.find_by(guide_id: @guide.id) if user_signed_in?
  end

  def edit
    if @guide.user.id != current_user.id && !current_user.admin?
      redirect_to guides_path
    end
  end

  def update
    if @guide.update(guide_edit_params)
      @guide.update!(search_field: "#{current_user.name}_#{@guide.title}_#{@guide.content}_#{@guide.address}_#{@guide.note}_#{@guide.prefecture}")
      redirect_to guide_path(@guide.id), notice: I18n.t('views.messages.update_guide')
    else
      render :edit
    end
  end

  def destroy
    if @guide.user.id == current_user.id || current_user.admin?
      @guide.destroy
      redirect_to guides_path, notice: I18n.t('views.messages.destroy_guide')
    else
      redirect_to guides_path
    end
  end

  private

  def guide_params
    params.require(:guide).permit(:title, :content, :prefecture, :address, :note, :user_id, pictures_attributes: [:id, :image, :order_number])
  end

  def guide_edit_params
    params.require(:guide).permit(:title, :content, :prefecture, :address, :note, :user_id, pictures_attributes: [:id, :image, :image_cache, :order_number])
  end

  def set_guide
    @guide = Guide.find(params[:id])
  end

  def search_keyword(search_keyword)
    split_keyword = search_keyword.split(/[[:blank:]]+/)
    minus_keyword = split_keyword.select {|word| word.match(/^-/) }
    split_keyword.reject! {|word| word.match(/^-/) }
    minus_keyword.each {|word| word.slice!(/^-/) }

    @guides = []
    split_keyword.each do |keyword|
      next if keyword == ""
      @guides += Guide.scope_keyword(keyword)
    end
    @guides.uniq!

    minus_items = []
    minus_keyword.each do |keyword|
      next if keyword == ""
      minus_items += Guide.scope_keyword(keyword)
    end

    minus_items.each do |minus_item|
      @guides.delete(minus_item)
    end

    @guides.sort! { |a| a[:updated_at] }
  end
end
