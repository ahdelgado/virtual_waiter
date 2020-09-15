class AddSectionableToSections < ActiveRecord::Migration[5.2]
  def change
    remove_column :sections, :type
    add_reference :sections, :sectionable, polymorphic: true
  end
end
