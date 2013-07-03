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

ActiveRecord::Schema.define(:version => 20130625105526) do

  create_table "accommodation_terms", :force => true do |t|
    t.string   "name"
    t.string   "days"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "account_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "advert_images", :force => true do |t|
    t.string   "image"
    t.string   "advert_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "adverts", :force => true do |t|
    t.string   "title"
    t.integer  "operation_type_id"
    t.integer  "category_id"
    t.boolean  "living"
    t.float    "price"
    t.float    "area"
    t.float    "all_price"
    t.integer  "house_material_id"
    t.integer  "house_type_id"
    t.integer  "city_id"
    t.integer  "district_id"
    t.integer  "street_id"
    t.string   "house"
    t.integer  "rooms"
    t.integer  "rooms_type_id"
    t.integer  "floor"
    t.integer  "floors"
    t.string   "image"
    t.string   "layout"
    t.string   "video"
    t.text     "description"
    t.integer  "trassa_diraction_id"
    t.integer  "purpouse_land_id"
    t.string   "landsize"
    t.float    "life_area"
    t.float    "kitchen"
    t.string   "home_deadline"
    t.integer  "floor_type_id"
    t.integer  "wc_count"
    t.integer  "state_repair_id"
    t.float    "ceill_height"
    t.string   "distance"
    t.boolean  "hotadv"
    t.float    "usercost"
    t.float    "usercostforall"
    t.integer  "currency_user_id"
    t.integer  "viewcount"
    t.integer  "metro_station_id"
    t.integer  "door_id"
    t.integer  "accommodation_term_id"
    t.integer  "preporty_location_id"
    t.integer  "business_center_class_id"
    t.integer  "separate_entrence_id"
    t.string   "cabinetcount"
    t.integer  "bussines_period_id"
    t.integer  "user_id"
    t.string   "slug"
    t.boolean  "torg"
    t.string   "free_from"
    t.string   "free_to"
    t.float    "commission"
    t.integer  "flat_type_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "adverts", ["category_id"], :name => "index_adverts_on_category_id"
  add_index "adverts", ["city_id"], :name => "index_adverts_on_city_id"
  add_index "adverts", ["id"], :name => "index_adverts_on_id"

  create_table "busines_periods", :force => true do |t|
    t.string   "name"
    t.string   "period"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "business_center_classes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "title"
    t.integer  "region_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comission_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "currency_users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "districts", :force => true do |t|
    t.string   "title"
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "estate_types", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "flat_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "floor_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fund_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "house_materials", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "house_types", :force => true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "info_contacts", :force => true do |t|
    t.string   "fio"
    t.string   "tel"
    t.string   "tel2"
    t.string   "email"
    t.string   "skype"
    t.string   "logocompany"
    t.integer  "account_type_id"
    t.integer  "commission_id"
    t.float    "comissionvalue"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "layouts", :force => true do |t|
    t.string   "image"
    t.string   "advert_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "metro_stations", :force => true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "movies", :force => true do |t|
    t.integer  "advert_id"
    t.string   "video"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "operation_types", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "preporty_locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "purpouse_lands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rooms_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "separate_entrences", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "state_repairs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "streets", :force => true do |t|
    t.string   "title"
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trassa_diractions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
