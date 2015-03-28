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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flights", force: true do |t|
    t.integer  "trip_id"
    t.datetime "time_queried"
    t.text     "price"
  end

  create_table "legs", force: true do |t|
    t.integer  "flight_id"
    t.integer  "slice"
    t.text     "carrier"
    t.integer  "flight_number"
    t.text     "origin"
    t.datetime "departure_time"
    t.text     "destination"
    t.datetime "arrival_time"
    t.integer  "duration"
    t.integer  "slice_duration"
  end

  create_table "trips", force: true do |t|
    t.text "origin_city"
    t.text "destination_city"
    t.date "departure_date"
    t.date "return_date"
  end

end
