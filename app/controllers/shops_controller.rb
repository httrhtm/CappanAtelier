class ShopsController < ApplicationController
  before_action :new_shop, only: [:new]

  def index
    @shop = Shop_image.limit(1).includes(:shop_images).order('created_at DESC')
  end

  def new
    @shop.shop_images.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      params[:shop][:shop_image].each do |image|
        @shop.shop_images.create(shop_image: image, shop_id: @shop.id)
      end
      redirect_to root_path
    else
      render :new
    end

  end

  # def show
  #   # @shop = Shop.find(params[:id])
  # end

  private
  def new_shop
    @shop = Shop.new
  end

  def shop_params
    params.require(:shop).permit(
      :name, 
      :outline, 
      :shop_image, 
      :address, 
      :phone_number, 
      :postal_code, 
      shop_images_attributes: [:id]
    ).merge(area_id: params[:shop][:area_id]
    ).merge(product_id: params[:shop][:product_id])
  end

  def move_to_index
    redirect_to new_user_session_path unless user_signed_in?
  end

end
