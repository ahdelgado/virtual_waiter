class DropIngredients2 < ActiveRecord::Migration[5.2]
  def change
    drop_table :ingredients do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.datetime "deleted_at"
      t.index ["deleted_at"], name: "index_ingredients_on_deleted_at"
    end
  end
end
