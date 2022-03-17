# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_17_073813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "transaction_type"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "color"
    t.string "icon"
    t.index ["name", "transaction_type", "user_id"], name: "index_categories_on_name_and_transaction_type_and_user_id", unique: true
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "amount"
    t.string "notes"
    t.date "date"
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_transactions_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "token_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token", "token_created_at"], name: "index_users_on_token_and_token_created_at"
  end

  add_foreign_key "categories", "users"
  add_foreign_key "transactions", "categories"
end
