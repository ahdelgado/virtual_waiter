class AddDeletedAtToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :deleted_at, :datetime
    add_index :ingredients, :deleted_at
  end
end
