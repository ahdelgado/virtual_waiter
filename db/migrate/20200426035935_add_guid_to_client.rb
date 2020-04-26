# frozen_string_literal: true

class AddGuidToClient < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'uuid-ossp' unless extension_enabled?('uuid-ossp')
    add_column :clients, :guid, :uuid, null: false, default: 'uuid_generate_v4()'
    add_index :clients, :guid
  end
end
