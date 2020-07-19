class AddDeletedAtToItemIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :item_ingredients, :deleted_at, :datetime
    add_index :item_ingredients, :deleted_at
  end
end
