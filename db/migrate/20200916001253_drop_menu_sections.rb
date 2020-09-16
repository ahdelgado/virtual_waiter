class DropMenuSections < ActiveRecord::Migration[5.2]
  def change
    drop_table :menu_sections do |t|
      t.references :menu
      t.references :section
    end
      
  end
end
