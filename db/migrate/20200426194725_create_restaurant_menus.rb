class CreateRestaurantMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_menus do |t|
      t.uuid 'guid', default: -> { 'uuid_generate_v4()' }, index: true
      t.belongs_to :restaurant, foreign_key: true, index: true, unique: true
      t.belongs_to :menu, foreign_key: true, index: true, unique: true

      t.timestamps
    end
  end
end
