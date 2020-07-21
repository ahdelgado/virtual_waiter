class RefactorPricingAndAssociations < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :price, :string
    remove_column :items, :section_id, :integer
    remove_column :ingredients, :price, :string
    remove_column :ingredients, :item_id, :string
    add_column :section_items, :price, :string
    add_column :item_ingredients, :price, :string
  end
end
