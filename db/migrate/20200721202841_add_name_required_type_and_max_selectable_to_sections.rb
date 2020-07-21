class AddNameRequiredTypeAndMaxSelectableToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :required, :boolean
    add_column :sections, :type, :string
    add_column :sections, :max_selectable, :integer
  end
end
