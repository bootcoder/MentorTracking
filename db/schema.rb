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

ActiveRecord::Schema.define(version: 20160613205358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "img_url"
    t.string   "github_handle"
    t.integer  "location_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.integer  "cost_center"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employments", force: :cascade do |t|
    t.string   "company_name"
    t.date     "start_date"
    t.integer  "mentor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "time_zone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "img_url"
    t.string   "github_handle"
    t.string   "cohort"
    t.text     "address"
    t.text     "bio"
    t.boolean  "is_employed",   default: false
    t.date     "dbc_start"
    t.date     "dbc_end"
    t.integer  "location_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text     "body"
    t.integer  "admin_id"
    t.integer  "mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "time_zone",       default: "UTC -08:00"
    t.integer  "accepts_mentors", default: 2
    t.integer  "recurrs_every",   default: 3
    t.boolean  "booked",          default: false
    t.integer  "admin_id"
    t.integer  "mentor_id"
    t.integer  "location_id"
    t.integer  "department_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

end
