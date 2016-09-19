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

ActiveRecord::Schema.define(version: 20160919005841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "street_id"
    t.integer  "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_addresses_on_city_id", using: :btree
    t.index ["house_id"], name: "index_addresses_on_house_id", using: :btree
    t.index ["state_id"], name: "index_addresses_on_state_id", using: :btree
    t.index ["street_id"], name: "index_addresses_on_street_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.string   "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_types", force: :cascade do |t|
    t.string   "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.integer  "event_type_id"
    t.datetime "datetime"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["event_type_id"], name: "index_events_on_event_type_id", using: :btree
  end

  create_table "houses", force: :cascade do |t|
    t.string   "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "names", force: :cascade do |t|
    t.string   "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer  "surname_id"
    t.integer  "name_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_id"], name: "index_people_on_name_id", using: :btree
    t.index ["surname_id"], name: "index_people_on_surname_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streets", force: :cascade do |t|
    t.string   "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surnames", force: :cascade do |t|
    t.string   "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "addresses", "houses"
  add_foreign_key "addresses", "states"
  add_foreign_key "addresses", "streets"
  add_foreign_key "events", "event_types"
  add_foreign_key "people", "names"
  add_foreign_key "people", "surnames"
end
