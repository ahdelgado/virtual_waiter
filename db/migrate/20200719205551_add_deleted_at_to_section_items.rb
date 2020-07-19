class AddDeletedAtToSectionItems < ActiveRecord::Migration[5.2]
  def change
    add_column :section_items, :deleted_at, :datetime
    add_index :section_items, :deleted_at
  end
end
