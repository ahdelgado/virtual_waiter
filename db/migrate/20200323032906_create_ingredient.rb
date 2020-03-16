class CreateIngredient < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :price
      t.references :item, index: true, foreign_key: true
      t.timestamps
    end
  end
end
