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

ActiveRecord::Schema.define(version: 20161129094522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cats", force: :cascade do |t|
    t.string   "name"
    t.boolean  "male"
    t.string   "mail"
    t.string   "phone_number"
    t.date     "birthday"
    t.string   "profile_picture"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "kind"
    t.integer  "capacity"
    t.integer  "price"
    t.boolean  "catnip"
    t.string   "photo"
    t.string   "description"
    t.integer  "cat_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["cat_id"], name: "index_houses_on_cat_id", using: :btree
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "arrival_date"
    t.date     "departure_date"
    t.integer  "nb_cats"
    t.integer  "price"
    t.string   "status",         default: "pending"
    t.integer  "cat_id"
    t.integer  "house_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["cat_id"], name: "index_reservations_on_cat_id", using: :btree
    t.index ["house_id"], name: "index_reservations_on_house_id", using: :btree
  end

  add_foreign_key "houses", "cats"
  add_foreign_key "reservations", "cats"
  add_foreign_key "reservations", "houses"
end
