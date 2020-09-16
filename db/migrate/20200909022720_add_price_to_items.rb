class AddPriceToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :price, :bigint
    remove_column :section_items, :price, :bigint
  end
end
