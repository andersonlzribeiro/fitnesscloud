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

ActiveRecord::Schema.define(version: 20140307183913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "description"
    t.boolean  "active",      default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["description"], name: "index_activities_on_description", unique: true, using: :btree

  create_table "billing_plans", force: true do |t|
    t.string   "description",                null: false
    t.integer  "days",        default: 0,    null: false
    t.boolean  "active",      default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "billing_plans", ["description"], name: "index_billing_plans_on_description", unique: true, using: :btree

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.boolean  "capital"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "health_clubs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name",                      null: false
    t.string   "gender",                    null: false
    t.string   "rg"
    t.string   "cpf"
    t.date     "birth_date"
    t.integer  "city_id"
    t.string   "zipcode"
    t.string   "address",                   null: false
    t.string   "adress_number",             null: false
    t.string   "district"
    t.string   "phone",                     null: false
    t.string   "business_phone"
    t.string   "mobile",                    null: false
    t.string   "email",                     null: false
    t.string   "emergency_contact_1",       null: false
    t.string   "emergency_contact_2"
    t.string   "emergency_contact_1_phone", null: false
    t.string   "emergency_contact_2_phone"
    t.string   "health_insurance_provider"
    t.string   "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["city_id"], name: "index_people_on_city_id", using: :btree
  add_index "people", ["name"], name: "index_people_on_name", unique: true, using: :btree

  create_table "plan_activities", force: true do |t|
    t.integer  "plan_id"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plan_activities", ["activity_id"], name: "index_plan_activities_on_activity_id", using: :btree
  add_index "plan_activities", ["plan_id"], name: "index_plan_activities_on_plan_id", using: :btree

  create_table "plan_prices", force: true do |t|
    t.integer  "plan_id"
    t.integer  "billing_plan_id"
    t.decimal  "price",           precision: 8, scale: 4
    t.decimal  "entrance_fee",    precision: 8, scale: 4
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plan_prices", ["billing_plan_id"], name: "index_plan_prices_on_billing_plan_id", using: :btree
  add_index "plan_prices", ["plan_id"], name: "index_plan_prices_on_plan_id", using: :btree

  create_table "plans", force: true do |t|
    t.string   "description"
    t.boolean  "active",      default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
