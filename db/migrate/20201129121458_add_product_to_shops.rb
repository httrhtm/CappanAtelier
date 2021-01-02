class AddProductToShops < ActiveRecord::Migration[5.2]
  def change
    add_reference :shops, :product, foreign_key: true
  end
end
