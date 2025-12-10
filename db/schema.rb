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

ActiveRecord::Schema[8.1].define(version: 2025_12_10_015835) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "activities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activity_session_groups", force: :cascade do |t|
    t.bigint "activity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "end_date", null: false
    t.string "name", null: false
    t.datetime "start_date", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_activity_session_groups_on_activity_id"
  end

  create_table "activity_sessions", force: :cascade do |t|
    t.bigint "activity_session_group_id", null: false
    t.integer "capacity", default: 10, null: false
    t.datetime "created_at", null: false
    t.datetime "ends_at", null: false
    t.datetime "starts_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["activity_session_group_id"], name: "index_activity_sessions_on_activity_session_group_id"
    t.index ["user_id"], name: "index_activity_sessions_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "activity_session_id", null: false
    t.datetime "created_at", null: false
    t.datetime "deleted_at"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["activity_session_id"], name: "index_bookings_on_activity_session_id"
    t.index ["deleted_at"], name: "index_bookings_on_deleted_at"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email", null: false
    t.string "name", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "activity_session_groups", "activities"
  add_foreign_key "activity_sessions", "activity_session_groups"
  add_foreign_key "activity_sessions", "users"
  add_foreign_key "bookings", "activity_sessions"
  add_foreign_key "bookings", "users"
end
