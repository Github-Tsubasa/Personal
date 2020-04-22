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

ActiveRecord::Schema.define(version: 2020_04_10_102911) do

  create_table "prefecture_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_prefecture_users_on_user_id"
  end

  create_table "prefectures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hokkaido"
    t.integer "aomori"
    t.integer "iwate"
    t.integer "miyagi"
    t.integer "akita"
    t.integer "yamagata"
    t.integer "fukushima"
    t.integer "ibaraki"
    t.integer "tochigi"
    t.integer "gunma"
    t.integer "chiba"
    t.integer "saitama"
    t.integer "tokyo"
    t.integer "kanagawa"
    t.integer "niigata"
    t.integer "toyama"
    t.integer "ishikawa"
    t.integer "fukui"
    t.integer "yamanashi"
    t.integer "nagano"
    t.integer "gifu"
    t.integer "shimzuoka"
    t.integer "aichi"
    t.integer "shiga"
    t.integer "kyoto"
    t.integer "osaka"
    t.integer "hyogo"
    t.integer "mie"
    t.integer "nara"
    t.integer "wakayama"
    t.integer "tottori"
    t.integer "shimane"
    t.integer "okayama"
    t.integer "hiroshima"
    t.integer "yamaguchi"
    t.integer "kagawa"
    t.integer "ehime"
    t.integer "tokushima"
    t.integer "kochi"
    t.integer "fukuoka"
    t.integer "saga"
    t.integer "nagasaki"
    t.integer "oita"
    t.integer "kumamoto"
    t.integer "miyazaki"
    t.integer "kagoshima"
    t.integer "okinawa"
  end

  create_table "tweets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "image"
    t.integer "name", null: false
    t.integer "text", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
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

  add_foreign_key "prefecture_users", "users"
end
