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

ActiveRecord::Schema.define(version: 2020_08_27_211305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assassins", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "total_kills"
    t.boolean "has_gun"
    t.boolean "has_knife"
    t.boolean "has_candlestick"
    t.boolean "has_wrench"
    t.boolean "has_rope"
    t.string "summary"
    t.integer "price"
    t.string "city"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.string "name"
    t.string "url"
    t.integer "member_since"
    t.index ["user_id"], name: "index_assassins_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "price"
    t.string "description"
    t.bigint "user_id", null: false
    t.bigint "assassin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assassin_id"], name: "index_reservations_on_assassin_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "reservation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "content"
    t.integer "rating"
    t.index ["reservation_id"], name: "index_reviews_on_reservation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assassins", "users"
  add_foreign_key "reservations", "assassins"
  add_foreign_key "reservations", "users"
  add_foreign_key "reviews", "reservations"
end
