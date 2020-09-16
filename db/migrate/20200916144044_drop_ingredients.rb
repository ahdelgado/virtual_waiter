class DropIngredients < ActiveRecord::Migration[5.2]
  def change
    drop_table :item_ingredients do |t|
      t.uuid "guid", default: -> { "uuid_generate_v4()" }
      t.bigint "item_id"
      t.bigint "ingredient_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.datetime "deleted_at"
      t.string "price"
      t.index ["deleted_at"], name: "index_item_ingredients_on_deleted_at"
      t.index ["guid"], name: "index_item_ingredients_on_guid"
      t.index ["ingredient_id"], name: "index_item_ingredients_on_ingredient_id"
      t.index ["item_id"], name: "index_item_ingredients_on_item_id"
    end
  end
end
