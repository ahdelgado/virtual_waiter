class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.uuid 'guid', default: -> { 'uuid_generate_v4()' }, index: true
      t.string :notes
      t.string :notable_type
      t.bigint :notable_id, index: true
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
