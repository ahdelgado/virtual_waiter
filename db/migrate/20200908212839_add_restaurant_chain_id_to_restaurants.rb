class AddRestaurantChainIdToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :restaurant_chain_id, :integer
  end
end
