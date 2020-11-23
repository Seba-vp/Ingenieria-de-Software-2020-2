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

ActiveRecord::Schema.define(version: 2020_11_20_212953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "comunas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text "comment"
    t.integer "stars"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interesteds", force: :cascade do |t|
    t.integer "user_id"
    t.integer "party_id"
    t.float "willing_pay"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parties", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "address"
    t.string "picture"
    t.integer "id_comuna"
    t.float "base_cost"
    t.float "total_cost"
    t.integer "max_cap"
    t.integer "service"
    t.integer "extra_cost"
    t.datetime "date"
    t.datetime "date_final"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_creator"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_feedbacks", force: :cascade do |t|
    t.text "comment"
    t.integer "stars"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "max_cap"
    t.float "price"
    t.string "picture"
    t.integer "stars"
    t.integer "id_creador"
    t.integer "id_comuna"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", default: "", null: false
    t.integer "age"
    t.string "phone"
    t.string "picture"
    t.integer "id_comuna"
    t.boolean "service_enable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
