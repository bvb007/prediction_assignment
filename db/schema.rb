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

ActiveRecord::Schema.define(version: 20140819115648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clubs_leagues", id: false, force: true do |t|
    t.integer "club_id"
    t.integer "league_id"
  end

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "location"
    t.date     "sdate"
    t.date     "edate"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.string   "location"
    t.date     "sdate"
    t.string   "club1_id"
    t.string   "club2_id"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
