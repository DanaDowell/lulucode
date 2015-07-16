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

ActiveRecord::Schema.define(version: 20150716220714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "markets", force: :cascade do |t|
    t.text   "title"
    t.text   "street_address"
    t.text   "city"
    t.string "latitude",       limit: 12
    t.string "longitude",      limit: 12
    t.text   "weekday"
    t.string "time_opens",     limit: 12
    t.string "time_closes",    limit: 12
    t.text   "date_opens"
    t.text   "date_closes"
    t.text   "governing_body"
    t.text   "county"
    t.text   "food_stamps"
    t.text   "notes"
  end

end
