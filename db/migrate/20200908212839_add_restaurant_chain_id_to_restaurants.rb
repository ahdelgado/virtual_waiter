class AddRestaurantChainIdToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurants, :restaurant_chain, index: true, foreign_key: true
  end
end
