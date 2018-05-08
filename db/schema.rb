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

ActiveRecord::Schema.define(version: 20180508015457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booked_gym_sessions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "gym_id"
    t.datetime "date_from"
    t.datetime "date_until"
    t.string "stripe_charge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gym_id"], name: "index_booked_gym_sessions_on_gym_id"
    t.index ["user_id"], name: "index_booked_gym_sessions_on_user_id"
  end

  create_table "gym_sessions", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "day_of_week"
    t.time "time_from"
    t.time "time_until"
    t.integer "hourly_price"
    t.integer "weeks_in_advance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gym_sessions_on_user_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "abn"
    t.string "address"
    t.string "contact_number"
    t.text "image_data"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gyms_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "contact_number"
    t.date "date_of_birth"
    t.string "address"
    t.string "drivers_license"
    t.text "drivers_license_image_data"
    t.text "photo_data"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "stripe_id"
    t.datetime "pending_approval_at"
    t.datetime "approved_trainer_at"
    t.datetime "rejected_trainer_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "booked_gym_sessions", "gym_sessions", column: "gym_id"
  add_foreign_key "booked_gym_sessions", "users"
  add_foreign_key "gym_sessions", "users"
  add_foreign_key "gyms", "users"
  add_foreign_key "profiles", "users"
end
