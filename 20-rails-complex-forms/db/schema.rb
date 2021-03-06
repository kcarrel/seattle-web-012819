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

ActiveRecord::Schema.define(version: 20190228161351) do

  create_table "crew_member_degrees", force: :cascade do |t|
    t.integer  "crew_member_id"
    t.integer  "degree_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["crew_member_id"], name: "index_crew_member_degrees_on_crew_member_id"
    t.index ["degree_id"], name: "index_crew_member_degrees_on_degree_id"
  end

  create_table "crew_members", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.integer  "ship_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "posting_number"
    t.index ["ship_id"], name: "index_crew_members_on_ship_id"
  end

  create_table "degrees", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.datetime "commission_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
