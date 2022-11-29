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

ActiveRecord::Schema[7.0].define(version: 2022_11_29_170618) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "participations", force: :cascade do |t|
    t.boolean "validated"
    t.bigint "user_id", null: false
    t.bigint "road_trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["road_trip_id"], name: "index_participations_on_road_trip_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "points", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.string "city"
    t.string "country"
    t.string "continent"
    t.date "start_date"
    t.date "end_date"
    t.text "description"
    t.float "budget_day"
    t.string "local_language"
    t.string "currency"
    t.string "housing_type"
    t.string "visits_activities"
    t.bigint "road_trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["road_trip_id"], name: "index_points_on_road_trip_id"
  end

  create_table "road_trips", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "native_language"
    t.string "other_language"
    t.string "work"
    t.integer "number_participants"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_road_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.date "date_of_birth"
    t.string "study_field"
    t.string "university"
    t.string "university_email"
    t.string "country"
    t.string "state"
    t.string "about_yourself"
    t.string "expect_experience"
    t.string "passion"
    t.string "free_time"
    t.string "password"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "participations", "road_trips"
  add_foreign_key "participations", "users"
  add_foreign_key "points", "road_trips"
  add_foreign_key "road_trips", "users"
end
