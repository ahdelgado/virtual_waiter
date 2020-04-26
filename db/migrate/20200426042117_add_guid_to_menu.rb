# frozen_string_literal: true

class AddGuidToMenu < ActiveRecord::Migration[5.1]
  def change
    add_column :menus, :guid, :uuid, null: false, default: 'uuid_generate_v4()'
    add_index :menus, :guid
  end
end
