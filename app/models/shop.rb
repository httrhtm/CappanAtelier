class Shop < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :area, optional: true

  has_many :shop_products
  has_many :shop_users
  has_many :products, through: :shop_products
  has_many :users, through: :shop_users
  has_many :shop_images

  accepts_nested_attributes_for :shop_images
end
