class AddDeletedAtToMenuSections < ActiveRecord::Migration[5.2]
  def change
    add_column :menu_sections, :deleted_at, :datetime
    add_index :menu_sections, :deleted_at
  end
end
