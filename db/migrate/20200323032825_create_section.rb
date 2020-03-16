class CreateSection < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :name
      t.references :menu, index: true, foreign_key: true
      t.timestamps
    end
  end
end
