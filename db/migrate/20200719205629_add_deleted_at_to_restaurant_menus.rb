class AddDeletedAtToRestaurantMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurant_menus, :deleted_at, :datetime
    add_index :restaurant_menus, :deleted_at
  end
end
