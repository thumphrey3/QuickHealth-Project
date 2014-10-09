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

ActiveRecord::Schema.define(version: 20141007051212) do

  create_table "case_syndromes", force: true do |t|
    t.integer  "case_id"
    t.integer  "syndrome_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "urgency_level"
    t.string   "status"
    t.text     "notes"
    t.integer  "patient_id"
    t.integer  "syndrome_id"
    t.string   "sender"
  end

  add_index "cases", ["patient_id"], name: "index_cases_on_patient_id"
  add_index "cases", ["syndrome_id"], name: "index_cases_on_syndrome_id"

  create_table "clinicians", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "national_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "sex"
    t.integer  "age"
    t.string   "role"
    t.string   "organization"
    t.string   "email"
    t.string   "mobile_number"
    t.string   "location"
  end

  create_table "households", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "mobile_number"
    t.string   "email"
  end

  create_table "locations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "province"
    t.string   "country"
    t.integer  "household_id"
  end

  add_index "locations", ["household_id"], name: "index_locations_on_household_id"

  create_table "patients", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "national_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "sex"
    t.integer  "age"
    t.string   "language"
    t.text     "medication"
    t.text     "conditions"
    t.integer  "household_id"
  end

  add_index "patients", ["household_id"], name: "index_patients_on_household_id"

  create_table "syndromes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "image"
    t.string   "description"
    t.string   "text_code"
    t.integer  "severity_score"
    t.string   "health_instruction"
  end

end
