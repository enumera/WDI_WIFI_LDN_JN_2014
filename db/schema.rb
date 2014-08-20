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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140819191401) do

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "group_type"
  end

  create_table "groups_users", :id => false, :force => true do |t|
    t.integer "group_id"
    t.integer "user_id"
  end

  create_table "opening_times", :force => true do |t|
    t.string   "day"
    t.time     "close"
    t.time     "open"
    t.integer  "wifi_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviews", :force => true do |t|
    t.integer  "user_id"
    t.integer  "wifi_id"
    t.text     "comment"
    t.integer  "stability"
    t.integer  "signal_strength"
    t.integer  "speed"
    t.integer  "quietness"
    t.integer  "overall_rating"
    t.integer  "food"
    t.integer  "toilet"
    t.integer  "power_point_availability"
    t.integer  "rough_number_of_seats"
    t.boolean  "reservation_possible"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "user_types", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first"
    t.string   "last"
    t.date     "dob"
    t.boolean  "sex"
    t.string   "occupation"
    t.string   "position"
    t.text     "image"
    t.string   "role"
    t.integer  "phone"
    t.integer  "user_type_id"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_wifis", :id => false, :force => true do |t|
    t.integer "wifi_id"
    t.integer "user_id"
  end

  create_table "venue_types", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "wifis", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.boolean  "free_or_paid"
    t.string   "share_scope"
    t.string   "business_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.integer  "phone"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "venue_type_id"
    t.text     "image"
  end

end
