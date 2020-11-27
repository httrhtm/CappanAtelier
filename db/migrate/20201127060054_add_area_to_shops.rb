class AddAreaToShops < ActiveRecord::Migration[5.2]
  def change
    add_reference :shops, :area, foreign_key: true
  end
end
