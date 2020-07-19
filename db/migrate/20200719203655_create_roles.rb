class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :name, unique: true, index: true
      t.uuid 'guid', default: -> { 'uuid_generate_v4()' }, index: true
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
