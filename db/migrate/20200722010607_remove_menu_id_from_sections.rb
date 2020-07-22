class RemoveMenuIdFromSections < ActiveRecord::Migration[5.2]
  def change
    remove_column :sections, :menu_id, :integer
  end
end
