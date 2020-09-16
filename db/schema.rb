# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_16_144509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "county"
    t.string "country"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.uuid "guid", default: -> { "uuid_generate_v4()" }, null: false
    t.index ["addressable_id"], name: "index_addresses_on_addressable_id"
    t.index ["deleted_at"], name: "index_addresses_on_deleted_at"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "guid", default: -> { "uuid_generate_v4()" }, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_clients_on_deleted_at"
    t.index ["guid"], name: "index_clients_on_guid"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.uuid "guid", default: -> { "uuid_generate_v4()" }, null: false
    t.text "description"
    t.bigint "price"
    t.index ["deleted_at"], name: "index_items_on_deleted_at"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "guid", default: -> { "uuid_generate_v4()" }, null: false
    t.datetime "deleted_at"
    t.string "available_times"
    t.index ["client_id"], name: "index_menus_on_client_id"
    t.index ["deleted_at"], name: "index_menus_on_deleted_at"
    t.index ["guid"], name: "index_menus_on_guid"
  end

  create_table "orders", force: :cascade do |t|
    t.uuid "guid", default: -> { "uuid_generate_v4()" }
    t.string "payment_token"
    t.integer "table_number"
    t.string "state"
    t.bigint "restaurant_id"
    t.string "notes"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_orders_on_deleted_at"
    t.index ["guid"], name: "index_orders_on_guid"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
  end

  create_table "restaurant_chains", force: :cascade do |t|
    t.uuid "guid", default: -> { "uuid_generate_v4()" }
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.bigint "client_id"
    t.index ["client_id"], name: "index_restaurant_chains_on_client_id"
    t.index ["deleted_at"], name: "index_restaurant_chains_on_deleted_at"
    t.index ["guid"], name: "index_restaurant_chains_on_guid"
  end

  create_table "restaurant_menus", force: :cascade do |t|
    t.uuid "guid", default: -> { "uuid_generate_v4()" }
    t.bigint "restaurant_id"
    t.bigint "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_restaurant_menus_on_deleted_at"
    t.index ["guid"], name: "index_restaurant_menus_on_guid"
    t.index ["menu_id"], name: "index_restaurant_menus_on_menu_id"
    t.index ["restaurant_id"], name: "index_restaurant_menus_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.uuid "guid", default: -> { "uuid_generate_v4()" }
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.bigint "restaurant_chain_id"
    t.index ["deleted_at"], name: "index_restaurants_on_deleted_at"
    t.index ["guid"], name: "index_restaurants_on_guid"
    t.index ["restaurant_chain_id"], name: "index_restaurants_on_restaurant_chain_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.uuid "guid", default: -> { "uuid_generate_v4()" }
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_roles_on_deleted_at"
    t.index ["guid"], name: "index_roles_on_guid"
    t.index ["name"], name: "index_roles_on_name"
  end

  create_table "section_items", force: :cascade do |t|
    t.uuid "guid", default: -> { "uuid_generate_v4()" }
    t.bigint "section_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_section_items_on_deleted_at"
    t.index ["guid"], name: "index_section_items_on_guid"
    t.index ["item_id"], name: "index_section_items_on_item_id"
    t.index ["section_id"], name: "index_section_items_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.uuid "guid", default: -> { "uuid_generate_v4()" }, null: false
    t.boolean "required"
    t.integer "max_selectable"
    t.string "sectionable_type"
    t.bigint "sectionable_id"
    t.index ["deleted_at"], name: "index_sections_on_deleted_at"
    t.index ["sectionable_type", "sectionable_id"], name: "index_sections_on_sectionable_type_and_sectionable_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "guid", default: -> { "uuid_generate_v4()" }, null: false
    t.index ["deleted_at"], name: "index_user_roles_on_deleted_at"
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_user_roles_on_user_id_and_role_id", unique: true
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 5, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "phone_number"
    t.boolean "admin"
    t.datetime "deleted_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "menus", "clients"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "restaurant_chains", "clients"
  add_foreign_key "restaurant_menus", "menus"
  add_foreign_key "restaurant_menus", "restaurants"
  add_foreign_key "restaurants", "restaurant_chains"
  add_foreign_key "section_items", "items"
  add_foreign_key "section_items", "sections"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
end
