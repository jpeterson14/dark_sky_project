# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_09_231246) do

  create_table "bucketlist_locations", force: :cascade do |t|
    t.integer "visitor_id", null: false
    t.integer "dark_sky_park_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "visited", default: false
    t.index ["dark_sky_park_id"], name: "index_bucketlist_locations_on_dark_sky_park_id"
    t.index ["visitor_id"], name: "index_bucketlist_locations_on_visitor_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "post"
    t.integer "visitor_id", null: false
    t.integer "dark_sky_park_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dark_sky_park_id"], name: "index_comments_on_dark_sky_park_id"
    t.index ["visitor_id"], name: "index_comments_on_visitor_id"
  end

  create_table "dark_sky_parks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "img_url"
    t.string "city"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "visitor_id", null: false
    t.integer "dark_sky_park_id", null: false
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dark_sky_park_id"], name: "index_reviews_on_dark_sky_park_id"
    t.index ["visitor_id"], name: "index_reviews_on_visitor_id"
  end

  create_table "visitors", force: :cascade do |t|
    t.string "username"
    t.string "password", default: "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bucketlist_locations", "dark_sky_parks"
  add_foreign_key "bucketlist_locations", "visitors"
  add_foreign_key "comments", "dark_sky_parks"
  add_foreign_key "comments", "visitors"
  add_foreign_key "reviews", "dark_sky_parks"
  add_foreign_key "reviews", "visitors"
end
