class CreateShopProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_products do |t|
      t.references :shop, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
