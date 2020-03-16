class CreateItem < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :comments
      t.references :section, index: true, foreign_key: true
      t.timestamps
    end
  end
end
