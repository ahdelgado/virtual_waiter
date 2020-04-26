class CreateAddress < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :county
      t.string :country
      t.string :addressable_type
      t.bigint :addressable_id, index: true
      t.timestamps
    end
  end
end
