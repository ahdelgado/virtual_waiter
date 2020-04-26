class CreateItemIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :item_ingredients do |t|
      t.uuid 'guid', default: -> { 'uuid_generate_v4()' }, index: true
      t.belongs_to :item, foreign_key: true, index: true, unique: true
      t.belongs_to :ingredient, foreign_key: true, index: true, unique: true

      t.timestamps
    end
  end
end
