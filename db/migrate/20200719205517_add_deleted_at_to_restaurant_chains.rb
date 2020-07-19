class AddDeletedAtToRestaurantChains < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurant_chains, :deleted_at, :datetime
    add_index :restaurant_chains, :deleted_at
  end
end
