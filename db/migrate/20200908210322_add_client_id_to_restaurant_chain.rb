class AddClientIdToRestaurantChain < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurant_chains, :client, index: true, foreign_key: true
  end
end
