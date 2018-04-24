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

ActiveRecord::Schema.define(version: 20180423180425) do

  create_table "announcements", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "animal_type"
    t.integer "help_status"
    t.integer "help_type"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "title"
    t.string "longitude"
    t.string "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_announcements", force: :cascade do |t|
    t.integer "user_id"
    t.integer "announcement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["announcement_id"], name: "index_user_announcements_on_announcement_id"
    t.index ["user_id"], name: "index_user_announcements_on_user_id"
  end

  create_table "user_locations", force: :cascade do |t|
    t.string "name"
    t.string "latitude_x"
    t.string "longitude_y"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_locations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "user_name"
    t.string "password"
    t.string "location"
    t.string "location_json"
    t.integer "device_id"
    t.integer "user_type"
    t.datetime "registered_date"
    t.boolean "is_personal_confirm"
    t.datetime "personal_confirm_date"
    t.boolean "is_active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
