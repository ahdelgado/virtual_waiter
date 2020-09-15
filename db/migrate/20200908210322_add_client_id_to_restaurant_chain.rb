class AddClientIdToRestaurantChain < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurant_chains, :client_id, :integer
  end
end
