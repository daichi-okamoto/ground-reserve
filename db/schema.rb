# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_07_24_210951) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "status", default: "pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "postal_code", null: false
    t.string "prefecture", null: false
    t.string "address", null: false
    t.string "email", null: false
    t.string "credit_card", null: false
    t.string "crypted_password"
    t.string "salt"
    t.string "user_type", null: false
    t.string "team_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "reservations", "users"
end