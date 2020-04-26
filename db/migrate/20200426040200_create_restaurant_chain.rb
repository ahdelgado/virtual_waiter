class CreateRestaurantChain < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_chains do |t|
      t.uuid 'guid', default: -> { 'uuid_generate_v4()' }, index: true
      t.string :name
      t.timestamps
    end
  end
end
