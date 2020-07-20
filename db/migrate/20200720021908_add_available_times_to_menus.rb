class AddAvailableTimesToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :available_times, :string
  end
end
