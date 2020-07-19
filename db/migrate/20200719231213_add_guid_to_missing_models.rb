class AddGuidToMissingModels < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :guid, :uuid, null: false, default: 'uuid_generate_v4()'
    add_column :items, :guid, :uuid, null: false, default: 'uuid_generate_v4()'
    add_column :sections, :guid, :uuid, null: false, default: 'uuid_generate_v4()'
    add_column :user_roles, :guid, :uuid, null: false, default: 'uuid_generate_v4()'
  end
end
