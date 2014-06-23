# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140623041346) do

  create_table "airplanes", force: true do |t|
    t.string   "model"
    t.integer  "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "passport"
    t.date     "birth_date"
    t.string   "nationality"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "itineraries", force: true do |t|
    t.integer  "origin_city_id"
    t.integer  "destiny_city_id"
    t.integer  "airplane_id"
    t.date     "departure_date"
    t.date     "arrival_date"
    t.time     "departure_time"
    t.time     "arrival_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itineraries", ["airplane_id"], name: "index_itineraries_on_airplane_id", using: :btree
  add_index "itineraries", ["destiny_city_id"], name: "index_itineraries_on_destiny_city_id", using: :btree
  add_index "itineraries", ["origin_city_id"], name: "index_itineraries_on_origin_city_id", using: :btree

  create_table "seat_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.integer  "customer_category_id"
    t.integer  "seat_category_id"
    t.integer  "customer_id"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tickets", ["customer_category_id"], name: "index_tickets_on_customer_category_id", using: :btree
  add_index "tickets", ["customer_id"], name: "index_tickets_on_customer_id", using: :btree
  add_index "tickets", ["seat_category_id"], name: "index_tickets_on_seat_category_id", using: :btree

  create_table "voyages", force: true do |t|
    t.integer "itinerary_id"
    t.integer "ticket_id"
  end

  add_index "voyages", ["itinerary_id"], name: "index_voyages_on_itinerary_id", using: :btree
  add_index "voyages", ["ticket_id"], name: "index_voyages_on_ticket_id", using: :btree

end
