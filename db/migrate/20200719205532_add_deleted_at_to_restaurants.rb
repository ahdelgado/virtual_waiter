class AddDeletedAtToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :deleted_at, :datetime
    add_index :restaurants, :deleted_at
  end
end
