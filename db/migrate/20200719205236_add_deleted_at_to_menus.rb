class AddDeletedAtToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :deleted_at, :datetime
    add_index :menus, :deleted_at
  end
end
