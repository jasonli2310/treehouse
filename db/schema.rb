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

ActiveRecord::Schema.define(version: 20160817012401) do

  create_table "photos", force: :cascade do |t|
    t.integer  "property_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "photos", ["property_id"], name: "index_photos_on_property_id"

  create_table "properties", force: :cascade do |t|
    t.string   "property_type"
    t.string   "string"
    t.integer  "room"
    t.string   "accommodate"
    t.string   "integer"
    t.integer  "bedroom"
    t.integer  "bathroom"
    t.string   "listing_name"
    t.text     "summary"
    t.string   "address"
    t.boolean  "is_tv"
    t.boolean  "is_kitchen"
    t.boolean  "is_ac"
    t.boolean  "is_heating"
    t.boolean  "is_internet"
    t.boolean  "is_furnished"
    t.boolean  "is_workspace"
    t.boolean  "is_dishwasher"
    t.boolean  "is_pet_allowed"
    t.boolean  "is_parking"
    t.boolean  "is_doorman"
    t.boolean  "is_roof_access"
    t.boolean  "is_gym"
    t.boolean  "is_pool"
    t.integer  "price"
    t.integer  "square_foot"
    t.boolean  "active"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "laundry"
    t.string   "washer"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "properties", ["user_id"], name: "index_properties_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "fullname"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
    t.string   "phone_number"
    t.text     "description"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
