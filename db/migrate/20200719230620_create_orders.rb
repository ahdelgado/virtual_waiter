class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.uuid 'guid', default: -> { 'uuid_generate_v4()' }, index: true
      t.string :payment_token
      t.integer :table_number
      t.string :state
      t.integer :restaurant_id
      t.references :notes, index: true, foreign_key: true
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
