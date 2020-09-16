class AddClientIdToRestaurantChain < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurant_chains, :clients, index: true, foreign_key: true
  end
end
