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

ActiveRecord::Schema.define(version: 2019_08_17_042007) do

  create_table "user_infos", force: :cascade do |t|
    t.string "email_address"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "account_id"
    t.integer "address_number"
    t.string "prefecture"
    t.string "city"
    t.string "building"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_posts", force: :cascade do |t|
    t.string "account_id"
    t.datetime "post_date"
    t.string "content"
    t.string "jenre"
    t.integer "favorite"
    t.string "memo_picture1"
    t.string "memo_picture2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
