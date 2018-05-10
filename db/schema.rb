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

ActiveRecord::Schema.define(version: 20180509155316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "active_admin_comments", id: false, force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.string "author_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "id", default: -> { "uuid_generate_v4()" }
    t.uuid "resource_id"
    t.uuid "author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
  end

  create_table "admin_users", id: false, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "id", default: -> { "uuid_generate_v4()" }
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "announcements", id: false, force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "animal_type"
    t.integer "help_status"
    t.integer "help_type"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "id", default: -> { "uuid_generate_v4()" }
    t.uuid "user_id"
    t.uuid "location_id"
  end

  create_table "locations", id: false, force: :cascade do |t|
    t.string "title"
    t.string "longitude_x"
    t.string "latitude_y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "id", default: -> { "uuid_generate_v4()" }
  end

  create_table "supporters", id: false, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "id", default: -> { "uuid_generate_v4()" }
    t.uuid "user_id"
  end

  create_table "user_locations", id: false, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "id", default: -> { "uuid_generate_v4()" }
    t.uuid "user_id"
    t.uuid "location_id"
  end

  create_table "users", id: false, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.integer "device_id"
    t.integer "type"
    t.boolean "is_personal_confirm"
    t.datetime "personal_confirm_date"
    t.boolean "is_active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.uuid "id", default: -> { "uuid_generate_v4()" }
    t.uuid "location_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
