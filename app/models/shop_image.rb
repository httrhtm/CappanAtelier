class ShopImage < ApplicationRecord
  belongs_to :shop
  
  mount_uploader :shop_image, ImageUploader
end
