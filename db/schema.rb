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

ActiveRecord::Schema[7.1].define(version: 2024_02_28_100344) do
  create_table "bookings", force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "tasker_id", null: false
    t.string "description"
    t.datetime "schedule"
    t.string "location"
    t.boolean "accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_bookings_on_service_id"
    t.index ["tasker_id"], name: "index_bookings_on_tasker_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "sender_id", null: false
    t.integer "recipient_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_messages_on_recipient_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services_taskers", id: false, force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "tasker_id", null: false
    t.index ["service_id", "tasker_id"], name: "index_services_taskers_on_service_id_and_tasker_id"
    t.index ["tasker_id", "service_id"], name: "index_services_taskers_on_tasker_id_and_service_id"
  end

  create_table "tasker_comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "tasker_id", null: false
    t.string "comment"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tasker_id"], name: "index_tasker_comments_on_tasker_id"
    t.index ["user_id"], name: "index_tasker_comments_on_user_id"
  end

  create_table "taskers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.string "location"
    t.string "profile_picture"
    t.text "description"
    t.integer "phone_number"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_taskers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "services"
  add_foreign_key "bookings", "taskers"
  add_foreign_key "messages", "users", column: "recipient_id"
  add_foreign_key "messages", "users", column: "sender_id"
  add_foreign_key "reviews", "users"
  add_foreign_key "tasker_comments", "taskers"
  add_foreign_key "tasker_comments", "users"
  add_foreign_key "taskers", "users"
end
