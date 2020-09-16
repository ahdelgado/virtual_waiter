class DropMenuSections < ActiveRecord::Migration[5.2]
  def change
    drop_table :menu_sections
  end
end
