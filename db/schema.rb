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

ActiveRecord::Schema[7.0].define(version: 2023_08_29_104307) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "chatroom_id", null: false
    t.bigint "option_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_answers_on_chatroom_id"
    t.index ["option_id"], name: "index_answers_on_option_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "chatroom_id", null: false
    t.bigint "wine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_bookings_on_chatroom_id"
    t.index ["wine_id"], name: "index_bookings_on_wine_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chatrooms_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "wine_id", null: false
    t.integer "quantity"
    t.integer "price"
    t.string "address"
    t.date "delivery"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.index ["user_id"], name: "index_offers_on_user_id"
    t.index ["wine_id"], name: "index_offers_on_wine_id"
  end

  create_table "option_tags", force: :cascade do |t|
    t.bigint "option_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["option_id"], name: "index_option_tags_on_option_id"
    t.index ["tag_id"], name: "index_option_tags_on_tag_id"
  end

  create_table "options", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.string "verbose"
    t.string "small"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_options_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.integer "position"
    t.boolean "last"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "taste"
    t.string "color"
    t.string "event"
    t.string "meal"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wine_tags", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "wine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_wine_tags_on_tag_id"
    t.index ["wine_id"], name: "index_wine_tags_on_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.float "rating"
    t.string "name"
    t.text "description"
    t.integer "year"
    t.string "appellation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "chatrooms"
  add_foreign_key "answers", "options"
  add_foreign_key "bookings", "chatrooms"
  add_foreign_key "bookings", "wines"
  add_foreign_key "chatrooms", "users"
  add_foreign_key "offers", "users"
  add_foreign_key "offers", "wines"
  add_foreign_key "option_tags", "options"
  add_foreign_key "option_tags", "tags"
  add_foreign_key "options", "questions"
  add_foreign_key "wine_tags", "tags"
  add_foreign_key "wine_tags", "wines"
end
