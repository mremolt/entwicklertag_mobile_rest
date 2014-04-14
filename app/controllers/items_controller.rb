class ItemsController < ApplicationController
  respond_to :json
  before_filter :fetch_item, :except => [:index, :create, :for_tag]

  def help
    respond_with Item.columns_hash
  end

  def index
    respond_with Item.where(user: user)
  end

  def for_tag
    respond_with Item.where(user: user).where('? = ANY(tags)', params[:tag])
  end

  def show
    respond_with @item
  end

  def create
    @item = Item.new(item_params)
    @item.user = user

    if @item.save
      render json: @item, status: :ok
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def update
    Rails.logger.info params
    if @item.update_attributes(item_params)
      render json: @item, status: :ok
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @item.destroy
      head :no_content, status: :ok
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  private

  def user
    params[:user]
  end

  def item_params
    params.require(:item).permit(:content, :user, :lat, :lng, :image_name, {tags: []})
  end

  def fetch_item
    @item = Item.where(user: user).find(params[:id])
    @item.tags_will_change!
    @item
  end
end
