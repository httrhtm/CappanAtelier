class Product < ApplicationRecord
  has_many :shop_products
  has_many :shops, through: :shop_products
end
