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

ActiveRecord::Schema.define(version: 2022_01_10_140134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "followers", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "follower_id"
    t.index ["user_id"], name: "index_followers_on_user_id"
  end

  create_table "following", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "following_id"
    t.index ["user_id"], name: "index_following_on_user_id"
  end

  create_table "twits", force: :cascade do |t|
    t.bigint "user_id"
    t.string "content"
    t.integer "response_to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_twits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "followers", "users"
  add_foreign_key "following", "users"
  add_foreign_key "twits", "users"
end
