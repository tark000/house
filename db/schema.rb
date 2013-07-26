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

ActiveRecord::Schema.define(:version => 0) do

  create_table "accommodation_terms", :force => true do |t|
    t.string  "name", :limit => 128
    t.integer "days"
  end

  create_table "account_types", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "admin_tools_dashboard_preferences", :force => true do |t|
    t.integer "user_id",                            :null => false
    t.text    "data",         :limit => 2147483647, :null => false
    t.string  "dashboard_id", :limit => 100,        :null => false
  end

  add_index "admin_tools_dashboard_preferences", ["user_id"], :name => "admin_tools_dashboard_preferences_fbfc09f1"

  create_table "admin_tools_menu_bookmark", :force => true do |t|
    t.integer "user_id", :null => false
    t.string  "url",     :null => false
    t.string  "title",   :null => false
  end

  add_index "admin_tools_menu_bookmark", ["user_id"], :name => "admin_tools_menu_bookmark_fbfc09f1"

  create_table "advert2_advert2", :force => true do |t|
    t.integer  "city_id",                                                               :null => false
    t.integer  "cityarea_id"
    t.integer  "street_id"
    t.string   "housenumber",      :limit => 32
    t.integer  "currency_id",                                                           :null => false
    t.integer  "housematerial_id"
    t.integer  "floors",                                                                :null => false
    t.datetime "created",                                                               :null => false
    t.datetime "modified",                                                              :null => false
    t.date     "publication_date",                                                      :null => false
    t.integer  "viewcount"
    t.string   "planning",         :limit => 256
    t.string   "logo",             :limit => 256
    t.string   "slug",             :limit => 50
    t.date     "startdate"
    t.integer  "rooms_from"
    t.decimal  "cost_to",                                :precision => 20, :scale => 0
    t.string   "title",            :limit => 256
    t.integer  "company_id"
    t.string   "mainphoto",        :limit => 256
    t.decimal  "cost_from",                              :precision => 20, :scale => 0
    t.integer  "rooms_to"
    t.integer  "realtype_id"
    t.text     "text",             :limit => 2147483647
    t.text     "mapaddress",       :limit => 2147483647
  end

  add_index "advert2_advert2", ["city_id"], :name => "advert2_advert2_586a73b5"
  add_index "advert2_advert2", ["cityarea_id"], :name => "advert2_advert2_f5b9186e"
  add_index "advert2_advert2", ["company_id"], :name => "advert2_advert2_company_id_idx"
  add_index "advert2_advert2", ["currency_id"], :name => "advert2_advert2_41f657b3"
  add_index "advert2_advert2", ["housematerial_id"], :name => "advert2_advert2_c3c793e2"
  add_index "advert2_advert2", ["realtype_id"], :name => "advert2_advert2_realtype_id_idx"
  add_index "advert2_advert2", ["slug"], :name => "slug", :unique => true
  add_index "advert2_advert2", ["street_id"], :name => "advert2_advert2_539ecf1b"

  create_table "advert2_advert2_advoptions", :force => true do |t|
    t.integer "advert2_id",     :null => false
    t.integer "advoptions2_id", :null => false
  end

  add_index "advert2_advert2_advoptions", ["advert2_id", "advoptions2_id"], :name => "advert2_id", :unique => true
  add_index "advert2_advert2_advoptions", ["advert2_id"], :name => "advert2_advert2_advoptions_5cd71429"
  add_index "advert2_advert2_advoptions", ["advoptions2_id"], :name => "advert2_advert2_advoptions_a1cdaa6c"

  create_table "advert2_advert2_dopoptions", :force => true do |t|
    t.integer "advert2_id",     :null => false
    t.integer "dopoptions2_id", :null => false
  end

  add_index "advert2_advert2_dopoptions", ["advert2_id", "dopoptions2_id"], :name => "advert2_id", :unique => true
  add_index "advert2_advert2_dopoptions", ["advert2_id"], :name => "advert2_advert2_dopoptions_5cd71429"
  add_index "advert2_advert2_dopoptions", ["dopoptions2_id"], :name => "advert2_advert2_dopoptions_941dd7de"

  create_table "advert2_advoptions2", :force => true do |t|
    t.string "name"
  end

  create_table "advert2_apartment", :force => true do |t|
    t.integer "advert_id"
    t.integer "number",                                                        :null => false
    t.integer "floor",                                                         :null => false
    t.integer "floorinfo_id"
    t.integer "rooms",                                                         :null => false
    t.float   "square",                                                        :null => false
    t.string  "planning",        :limit => 256
    t.decimal "cost",                           :precision => 20, :scale => 0
    t.integer "usercurrency_id"
    t.decimal "costforall",                     :precision => 20, :scale => 0
  end

  add_index "advert2_apartment", ["advert_id"], :name => "advert2_apartment_dbc21818"
  add_index "advert2_apartment", ["floorinfo_id"], :name => "advert2_apartment_2c105bc3"
  add_index "advert2_apartment", ["usercurrency_id"], :name => "advert2_apartment_usercurrency_id_idx"

  create_table "advert2_dopoptions2", :force => true do |t|
    t.string "name"
  end

  create_table "advert2_floorinfo", :force => true do |t|
    t.integer "advert_id"
    t.integer "floor",                    :null => false
    t.string  "planning",  :limit => 256
  end

  add_index "advert2_floorinfo", ["advert_id"], :name => "advert2_floorinfo_dbc21818"

  create_table "advert2_photo", :force => true do |t|
    t.integer "advert_id"
    t.string  "picture",   :limit => 100
  end

  add_index "advert2_photo", ["advert_id"], :name => "advert2_photo_dbc21818"

  create_table "advert2_photo2", :force => true do |t|
    t.integer "advert_id"
    t.string  "picture",   :limit => 100, :null => false
  end

  add_index "advert2_photo2", ["advert_id"], :name => "advert2_photo2_dbc21818"

  create_table "advert3_advert3", :force => true do |t|
    t.integer  "city_id",                                                               :null => false
    t.integer  "cityarea_id"
    t.integer  "housematerial_id"
    t.integer  "floors",                                                                :null => false
    t.date     "startdate"
    t.datetime "created",                                                               :null => false
    t.datetime "modified",                                                              :null => false
    t.date     "publication_date",                                                      :null => false
    t.integer  "viewcount"
    t.string   "planning",         :limit => 256,                                       :null => false
    t.string   "logo",             :limit => 256,                                       :null => false
    t.string   "slug",             :limit => 50,                                        :null => false
    t.integer  "rooms_from"
    t.decimal  "cost_to",                                :precision => 20, :scale => 0
    t.integer  "realtype_id"
    t.text     "text",             :limit => 2147483647
    t.integer  "currency_id"
    t.string   "title",            :limit => 256
    t.integer  "company_id"
    t.string   "mainphoto",        :limit => 256
    t.integer  "street_id"
    t.decimal  "cost_from",                              :precision => 20, :scale => 0
    t.string   "housenumber",      :limit => 32
    t.integer  "rooms_to"
    t.text     "mapaddress",       :limit => 2147483647
  end

  add_index "advert3_advert3", ["city_id"], :name => "advert3_advert3_586a73b5"
  add_index "advert3_advert3", ["cityarea_id"], :name => "advert3_advert3_f5b9186e"
  add_index "advert3_advert3", ["company_id"], :name => "advert3_advert3_company_id_idx"
  add_index "advert3_advert3", ["currency_id"], :name => "advert3_advert3_currency_id_idx"
  add_index "advert3_advert3", ["housematerial_id"], :name => "advert3_advert3_c3c793e2"
  add_index "advert3_advert3", ["realtype_id"], :name => "advert3_advert3_realtype_id_idx"
  add_index "advert3_advert3", ["slug"], :name => "slug", :unique => true
  add_index "advert3_advert3", ["street_id"], :name => "advert3_advert3_street_id_idx"

  create_table "advert3_advert3_advoptions", :force => true do |t|
    t.integer "advert3_id",     :null => false
    t.integer "advoptions3_id", :null => false
  end

  add_index "advert3_advert3_advoptions", ["advert3_id", "advoptions3_id"], :name => "advert3_id", :unique => true
  add_index "advert3_advert3_advoptions", ["advert3_id"], :name => "advert3_advert3_advoptions_393ac892"
  add_index "advert3_advert3_advoptions", ["advoptions3_id"], :name => "advert3_advert3_advoptions_e4849ac9"

  create_table "advert3_advert3_dopoptions", :force => true do |t|
    t.integer "advert3_id",     :null => false
    t.integer "dopoptions3_id", :null => false
  end

  add_index "advert3_advert3_dopoptions", ["advert3_id", "dopoptions3_id"], :name => "advert3_id", :unique => true
  add_index "advert3_advert3_dopoptions", ["advert3_id"], :name => "advert3_advert3_dopoptions_393ac892"
  add_index "advert3_advert3_dopoptions", ["dopoptions3_id"], :name => "advert3_advert3_dopoptions_faaf7f87"

  create_table "advert3_advoptions3", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "advert3_dopoptions3", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "advert3_house", :force => true do |t|
    t.integer "advert_id"
    t.integer "floor",                                                         :null => false
    t.integer "rooms",                                                         :null => false
    t.float   "square",                                                        :null => false
    t.string  "planning",        :limit => 256,                                :null => false
    t.decimal "cost",                           :precision => 20, :scale => 0
    t.integer "usercurrency_id"
    t.decimal "costforall",                     :precision => 20, :scale => 0
    t.integer "type"
  end

  add_index "advert3_house", ["advert_id"], :name => "advert3_house_dbc21818"
  add_index "advert3_house", ["usercurrency_id"], :name => "advert3_house_usercurrency_id_idx"

  create_table "advert3_photo", :force => true do |t|
    t.integer "advert_id"
    t.integer "house_id"
    t.string  "picture",   :limit => 100, :null => false
  end

  add_index "advert3_photo", ["advert_id"], :name => "advert3_photo_dbc21818"
  add_index "advert3_photo", ["house_id"], :name => "advert3_photo_1519731"

  create_table "advert3_photo3", :force => true do |t|
    t.integer "advert_id"
    t.string  "picture",   :limit => 100, :null => false
  end

  add_index "advert3_photo3", ["advert_id"], :name => "advert3_photo3_dbc21818"

  create_table "advert3_photohouse", :force => true do |t|
    t.integer "house_id"
    t.string  "picture",  :limit => 100, :null => false
  end

  add_index "advert3_photohouse", ["house_id"], :name => "advert3_photohouse_1519731"

  create_table "advert_advcontact", :force => true do |t|
    t.string "contact"
    t.string "email",   :limit => 75
    t.string "phone",   :limit => 32
  end

  create_table "advert_advert_advoptions", :force => true do |t|
    t.integer "advert_id",     :null => false
    t.integer "advoptions_id", :null => false
  end

  add_index "advert_advert_advoptions", ["advert_id", "advoptions_id"], :name => "advert_id", :unique => true
  add_index "advert_advert_advoptions", ["advert_id"], :name => "advert_advert_advoptions_dbc21818"
  add_index "advert_advert_advoptions", ["advoptions_id"], :name => "advert_advert_advoptions_59b47a03"

  create_table "advert_advert_dopoptions", :force => true do |t|
    t.integer "advert_id",     :null => false
    t.integer "dopoptions_id", :null => false
  end

  add_index "advert_advert_dopoptions", ["advert_id", "dopoptions_id"], :name => "advert_advert_dopoptions_advert_id_755af557e353cae2_uniq", :unique => true
  add_index "advert_advert_dopoptions", ["advert_id"], :name => "advert_advert_dopoptions_dbc21818"
  add_index "advert_advert_dopoptions", ["dopoptions_id"], :name => "advert_advert_dopoptions_92d83537"

  create_table "advert_advert_photos", :force => true do |t|
    t.integer "advert_id", :null => false
    t.integer "photo_id",  :null => false
  end

  add_index "advert_advert_photos", ["advert_id", "photo_id"], :name => "advert_id", :unique => true
  add_index "advert_advert_photos", ["advert_id"], :name => "advert_advert_photos_dbc21818"
  add_index "advert_advert_photos", ["photo_id"], :name => "advert_advert_photos_7c6c8bb1"

  create_table "advert_advoptions", :force => true do |t|
    t.string  "name"
    t.integer "realtype_id", :null => false
  end

  add_index "advert_advoptions", ["realtype_id"], :name => "advert_advoptions_realtype_id_idx"

  create_table "advert_contactadvert", :force => true do |t|
    t.integer "photo_id",  :null => false
    t.integer "advert_id", :null => false
  end

  add_index "advert_contactadvert", ["advert_id"], :name => "advert_contactadvert_dbc21818"
  add_index "advert_contactadvert", ["photo_id"], :name => "advert_contactadvert_7c6c8bb1"

  create_table "advert_dopoptions", :force => true do |t|
    t.string  "name"
    t.integer "realtype_id"
  end

  add_index "advert_dopoptions", ["realtype_id"], :name => "advert_dopoptions_realtype_id_idx"

  create_table "advert_images", :force => true do |t|
    t.string  "image",     :limit => 256
    t.integer "advert_id"
  end

  add_index "advert_images", ["advert_id"], :name => "advert_photo_advert_id_idx"

  create_table "advert_photoadvert", :force => true do |t|
    t.integer "photo_id",  :null => false
    t.integer "advert_id", :null => false
  end

  add_index "advert_photoadvert", ["advert_id"], :name => "advert_photoadvert_dbc21818"
  add_index "advert_photoadvert", ["photo_id"], :name => "advert_photoadvert_7c6c8bb1"

  create_table "advert_tags", :force => true do |t|
    t.text    "word",   :limit => 2147483647, :null => false
    t.integer "weight",                       :null => false
  end

  create_table "advert_usercart", :force => true do |t|
    t.date    "cart_date",                         :null => false
    t.integer "user_id"
    t.integer "advert_id",                         :null => false
    t.text    "session_key", :limit => 2147483647
  end

  add_index "advert_usercart", ["advert_id"], :name => "advert_usercart_dbc21818"
  add_index "advert_usercart", ["user_id"], :name => "advert_usercart_fbfc09f1"

  create_table "adverts", :force => true do |t|
    t.integer "category_id"
    t.integer "city_id",                                                                       :null => false
    t.integer "district_id"
    t.integer "street_id"
    t.string  "house",                    :limit => 32
    t.integer "house_material_id"
    t.integer "house_type_id"
    t.integer "rooms",                                                                         :null => false
    t.integer "rooms_type_id"
    t.integer "floor",                                                                         :null => false
    t.integer "floors",                                                                        :null => false
    t.integer "trassa_diraction_id"
    t.integer "purpouse_land_id"
    t.string  "landsize",                 :limit => 10
    t.string  "title"
    t.text    "description",              :limit => 2147483647
    t.decimal "area",                                           :precision => 20, :scale => 2
    t.decimal "life_area",                                      :precision => 20, :scale => 2
    t.decimal "kitchen",                                        :precision => 20, :scale => 2
    t.string  "home_deadline",            :limit => 128
    t.string  "free_from",                :limit => 128
    t.integer "floor_type_id"
    t.integer "wc_count"
    t.integer "state_repair_id"
    t.decimal "ceill_height",                                   :precision => 20, :scale => 2
    t.string  "distance",                 :limit => 128
    t.boolean "hotadv"
    t.decimal "price",                                          :precision => 20, :scale => 2
    t.decimal "all_price",                                      :precision => 20, :scale => 0
    t.decimal "usercost",                                       :precision => 20, :scale => 2
    t.decimal "usercostforall",                                 :precision => 20, :scale => 0
    t.integer "currency_user_id"
    t.integer "viewcount"
    t.integer "metro_station_id"
    t.integer "door_id"
    t.integer "accommodation_term_id"
    t.integer "preporty_location_id"
    t.integer "business_center_class_id"
    t.integer "separate_entrence_id"
    t.string  "cabinetcount",             :limit => 256
    t.integer "bussines_period_id"
    t.string  "layout",                   :limit => 256
    t.string  "image",                    :limit => 256
    t.integer "user_id",                                                                       :null => false
    t.string  "slug",                     :limit => 50
    t.boolean "torg"
    t.string  "free_to",                  :limit => 128
    t.integer "operation_type_id"
    t.decimal "commission",                                     :precision => 20, :scale => 2
    t.integer "flat_type_id"
    t.string  "video",                    :limit => 512
    t.boolean "admin"
    t.integer "region_id"
    t.text    "mapaddress",               :limit => 2147483647
    t.text    "youtube",                  :limit => 2147483647
    t.boolean "living"
    t.decimal "longitude",                                      :precision => 20, :scale => 2
    t.decimal "latitude",                                       :precision => 20, :scale => 2
  end

  add_index "adverts", ["accommodation_term_id"], :name => "advert_advert_fb43b1b"
  add_index "adverts", ["business_center_class_id"], :name => "advert_advert_b3427504"
  add_index "adverts", ["bussines_period_id"], :name => "advert_advert_7e3148ef"
  add_index "adverts", ["category_id"], :name => "advert_advert_69f47248"
  add_index "adverts", ["city_id"], :name => "advert_advert_586a73b5"
  add_index "adverts", ["currency_user_id"], :name => "advert_advert_1b488ba8"
  add_index "adverts", ["district_id"], :name => "advert_advert_f5b9186e"
  add_index "adverts", ["door_id"], :name => "advert_advert_961fddf0"
  add_index "adverts", ["flat_type_id"], :name => "advert_advert_flattypeid_id_idx"
  add_index "adverts", ["floor_type_id"], :name => "advert_advert_9ae7575d"
  add_index "adverts", ["house_material_id"], :name => "advert_advert_c3c793e2"
  add_index "adverts", ["house_type_id"], :name => "advert_advert_74f537b"
  add_index "adverts", ["metro_station_id"], :name => "advert_advert_dcc3cfa6"
  add_index "adverts", ["operation_type_id"], :name => "advert_advert_1d21b276"
  add_index "adverts", ["preporty_location_id"], :name => "advert_advert_cf7cb121"
  add_index "adverts", ["purpouse_land_id"], :name => "advert_advert_6dd97b3c"
  add_index "adverts", ["region_id"], :name => "advert_advert_countryarea_id_idx"
  add_index "adverts", ["rooms_type_id"], :name => "advert_advert_81d86207"
  add_index "adverts", ["separate_entrence_id"], :name => "advert_advert_27bfdc8b"
  add_index "adverts", ["slug"], :name => "slug", :unique => true
  add_index "adverts", ["state_repair_id"], :name => "advert_advert_43141872"
  add_index "adverts", ["street_id"], :name => "advert_advert_539ecf1b"
  add_index "adverts", ["trassa_diraction_id"], :name => "advert_advert_77ccd16a"
  add_index "adverts", ["user_id"], :name => "advert_advert_fbfc09f1"

  create_table "auth_group", :force => true do |t|
    t.string "name", :limit => 80, :null => false
  end

  add_index "auth_group", ["name"], :name => "name", :unique => true

  create_table "auth_group_permissions", :force => true do |t|
    t.integer "group_id",      :null => false
    t.integer "permission_id", :null => false
  end

  add_index "auth_group_permissions", ["group_id", "permission_id"], :name => "group_id", :unique => true
  add_index "auth_group_permissions", ["group_id"], :name => "auth_group_permissions_bda51c3c"
  add_index "auth_group_permissions", ["permission_id"], :name => "auth_group_permissions_1e014c8f"

  create_table "auth_message", :force => true do |t|
    t.integer "user_id",                       :null => false
    t.text    "message", :limit => 2147483647, :null => false
  end

  add_index "auth_message", ["user_id"], :name => "auth_message_fbfc09f1"

  create_table "auth_permission", :force => true do |t|
    t.string  "name",            :limit => 50,  :null => false
    t.integer "content_type_id",                :null => false
    t.string  "codename",        :limit => 100, :null => false
  end

  add_index "auth_permission", ["content_type_id", "codename"], :name => "content_type_id", :unique => true
  add_index "auth_permission", ["content_type_id"], :name => "auth_permission_e4470c6e"

  create_table "auth_user", :force => true do |t|
    t.string   "username",     :limit => 30,  :null => false
    t.string   "first_name",   :limit => 30,  :null => false
    t.string   "last_name",    :limit => 30,  :null => false
    t.string   "email",        :limit => 75,  :null => false
    t.string   "password",     :limit => 128, :null => false
    t.boolean  "is_staff",                    :null => false
    t.boolean  "is_active",                   :null => false
    t.boolean  "is_superuser",                :null => false
    t.datetime "last_login",                  :null => false
    t.datetime "date_joined",                 :null => false
  end

  add_index "auth_user", ["username"], :name => "username", :unique => true

  create_table "auth_user_groups", :force => true do |t|
    t.integer "user_id",  :null => false
    t.integer "group_id", :null => false
  end

  add_index "auth_user_groups", ["group_id"], :name => "auth_user_groups_bda51c3c"
  add_index "auth_user_groups", ["user_id", "group_id"], :name => "user_id", :unique => true
  add_index "auth_user_groups", ["user_id"], :name => "auth_user_groups_fbfc09f1"

  create_table "auth_user_user_permissions", :force => true do |t|
    t.integer "user_id",       :null => false
    t.integer "permission_id", :null => false
  end

  add_index "auth_user_user_permissions", ["permission_id"], :name => "auth_user_user_permissions_1e014c8f"
  add_index "auth_user_user_permissions", ["user_id", "permission_id"], :name => "user_id", :unique => true
  add_index "auth_user_user_permissions", ["user_id"], :name => "auth_user_user_permissions_fbfc09f1"

  create_table "business_center_classes", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "bussines_periods", :force => true do |t|
    t.string  "name",   :limit => 128
    t.integer "period"
  end

  create_table "categories", :force => true do |t|
    t.string  "name"
    t.boolean "subtype"
  end

  add_index "categories", ["subtype"], :name => "advert_realtype_d245265f"

  create_table "celery_taskmeta", :force => true do |t|
    t.string   "task_id",                         :null => false
    t.string   "status",    :limit => 50,         :null => false
    t.text     "result",    :limit => 2147483647
    t.datetime "date_done",                       :null => false
    t.text     "traceback", :limit => 2147483647
    t.boolean  "hidden",                          :null => false
    t.text     "meta",      :limit => 2147483647
  end

  add_index "celery_taskmeta", ["hidden"], :name => "celery_taskmeta_c91f1bf"
  add_index "celery_taskmeta", ["task_id"], :name => "task_id", :unique => true

  create_table "celery_tasksetmeta", :force => true do |t|
    t.string   "taskset_id",                       :null => false
    t.text     "result",     :limit => 2147483647, :null => false
    t.datetime "date_done",                        :null => false
    t.boolean  "hidden",                           :null => false
  end

  add_index "celery_tasksetmeta", ["hidden"], :name => "celery_tasksetmeta_c91f1bf"
  add_index "celery_tasksetmeta", ["taskset_id"], :name => "taskset_id", :unique => true

  create_table "cities", :force => true do |t|
    t.string  "name"
    t.integer "region_id"
  end

  add_index "cities", ["region_id"], :name => "advert_city_dfd0e917"

  create_table "comission_types", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "company_companycategory", :force => true do |t|
    t.string "name",    :limit => 128
    t.string "newslug", :limit => 50
  end

  add_index "company_companycategory", ["newslug"], :name => "company_companycategory_newslug_idx"
  add_index "company_companycategory", ["newslug"], :name => "newslug", :unique => true

  create_table "company_companyinfo", :force => true do |t|
    t.integer "category_id",                            :null => false
    t.integer "region",                                 :null => false
    t.string  "name",             :limit => 128
    t.string  "logo",             :limit => 128
    t.string  "tel",              :limit => 128
    t.string  "fax",              :limit => 128
    t.string  "mobile",           :limit => 128
    t.string  "email",            :limit => 75
    t.string  "siteurl",          :limit => 200
    t.string  "sitename",         :limit => 128
    t.string  "address",          :limit => 128
    t.string  "photo2",           :limit => 128
    t.string  "photo3",           :limit => 128
    t.string  "photo4",           :limit => 128
    t.string  "photo5",           :limit => 128
    t.string  "shortdescription", :limit => 128
    t.text    "fulldescription",  :limit => 2147483647, :null => false
    t.string  "slug",             :limit => 50
  end

  add_index "company_companyinfo", ["category_id"], :name => "company_companyinfo_42dc49bc"
  add_index "company_companyinfo", ["slug"], :name => "company_companyinfo_slug_idx"

  create_table "currency_users", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "districts", :force => true do |t|
    t.string  "name"
    t.integer "city_id"
  end

  add_index "districts", ["city_id"], :name => "advert_cityarea_a3ca7998"

  create_table "django_admin_log", :force => true do |t|
    t.datetime "action_time",                           :null => false
    t.integer  "user_id",                               :null => false
    t.integer  "content_type_id"
    t.text     "object_id",       :limit => 2147483647
    t.string   "object_repr",     :limit => 200,        :null => false
    t.integer  "action_flag",     :limit => 2,          :null => false
    t.text     "change_message",  :limit => 2147483647, :null => false
  end

  add_index "django_admin_log", ["content_type_id"], :name => "django_admin_log_e4470c6e"
  add_index "django_admin_log", ["user_id"], :name => "django_admin_log_fbfc09f1"

  create_table "django_content_type", :force => true do |t|
    t.string "name",      :limit => 100, :null => false
    t.string "app_label", :limit => 100, :null => false
    t.string "model",     :limit => 100, :null => false
  end

  add_index "django_content_type", ["app_label", "model"], :name => "app_label", :unique => true

  create_table "django_flatpage", :force => true do |t|
    t.string  "url",                   :limit => 100,        :null => false
    t.string  "title",                 :limit => 200,        :null => false
    t.text    "content",               :limit => 2147483647, :null => false
    t.boolean "enable_comments",                             :null => false
    t.string  "template_name",         :limit => 70,         :null => false
    t.boolean "registration_required",                       :null => false
  end

  add_index "django_flatpage", ["url"], :name => "django_flatpage_a4b49ab"

  create_table "django_flatpage_sites", :force => true do |t|
    t.integer "flatpage_id", :null => false
    t.integer "site_id",     :null => false
  end

  add_index "django_flatpage_sites", ["flatpage_id", "site_id"], :name => "flatpage_id", :unique => true
  add_index "django_flatpage_sites", ["flatpage_id"], :name => "django_flatpage_sites_dedefef8"
  add_index "django_flatpage_sites", ["site_id"], :name => "django_flatpage_sites_6223029"

  create_table "django_session", :primary_key => "session_key", :force => true do |t|
    t.text     "session_data", :limit => 2147483647, :null => false
    t.datetime "expire_date",                        :null => false
  end

  create_table "django_site", :force => true do |t|
    t.string "domain", :limit => 100, :null => false
    t.string "name",   :limit => 50,  :null => false
  end

  create_table "djcelery_crontabschedule", :force => true do |t|
    t.string "minute",        :limit => 64, :null => false
    t.string "hour",          :limit => 64, :null => false
    t.string "day_of_week",   :limit => 64, :null => false
    t.string "day_of_month",  :limit => 64, :null => false
    t.string "month_of_year", :limit => 64, :null => false
  end

  create_table "djcelery_intervalschedule", :force => true do |t|
    t.integer "every",                :null => false
    t.string  "period", :limit => 24, :null => false
  end

  create_table "djcelery_periodictask", :force => true do |t|
    t.string   "name",            :limit => 200,        :null => false
    t.string   "task",            :limit => 200,        :null => false
    t.integer  "interval_id"
    t.integer  "crontab_id"
    t.text     "args",            :limit => 2147483647, :null => false
    t.text     "kwargs",          :limit => 2147483647, :null => false
    t.string   "queue",           :limit => 200
    t.string   "exchange",        :limit => 200
    t.string   "routing_key",     :limit => 200
    t.datetime "expires"
    t.boolean  "enabled",                               :null => false
    t.datetime "last_run_at"
    t.integer  "total_run_count",                       :null => false
    t.datetime "date_changed",                          :null => false
    t.text     "description",     :limit => 2147483647, :null => false
  end

  add_index "djcelery_periodictask", ["crontab_id"], :name => "djcelery_periodictask_7aa5fda"
  add_index "djcelery_periodictask", ["interval_id"], :name => "djcelery_periodictask_17d2d99d"
  add_index "djcelery_periodictask", ["name"], :name => "name", :unique => true

  create_table "djcelery_periodictasks", :primary_key => "ident", :force => true do |t|
    t.datetime "last_update", :null => false
  end

  create_table "djcelery_taskstate", :force => true do |t|
    t.string   "state",     :limit => 64,         :null => false
    t.string   "task_id",   :limit => 36,         :null => false
    t.string   "name",      :limit => 200
    t.datetime "tstamp",                          :null => false
    t.text     "args",      :limit => 2147483647
    t.text     "kwargs",    :limit => 2147483647
    t.datetime "eta"
    t.datetime "expires"
    t.text     "result",    :limit => 2147483647
    t.text     "traceback", :limit => 2147483647
    t.float    "runtime"
    t.integer  "retries",                         :null => false
    t.integer  "worker_id"
    t.boolean  "hidden",                          :null => false
  end

  add_index "djcelery_taskstate", ["hidden"], :name => "djcelery_taskstate_c91f1bf"
  add_index "djcelery_taskstate", ["name"], :name => "djcelery_taskstate_52094d6e"
  add_index "djcelery_taskstate", ["state"], :name => "djcelery_taskstate_355bfc27"
  add_index "djcelery_taskstate", ["task_id"], :name => "task_id", :unique => true
  add_index "djcelery_taskstate", ["tstamp"], :name => "djcelery_taskstate_f0ba6500"
  add_index "djcelery_taskstate", ["worker_id"], :name => "djcelery_taskstate_20fc5b84"

  create_table "djcelery_workerstate", :force => true do |t|
    t.string   "hostname",       :null => false
    t.datetime "last_heartbeat"
  end

  add_index "djcelery_workerstate", ["hostname"], :name => "hostname", :unique => true
  add_index "djcelery_workerstate", ["last_heartbeat"], :name => "djcelery_workerstate_eb8ac7e4"

  create_table "doors", :force => true do |t|
    t.string "name"
  end

  create_table "easy_thumbnails_source", :force => true do |t|
    t.string   "storage_hash", :limit => 40, :null => false
    t.string   "name",                       :null => false
    t.datetime "modified",                   :null => false
  end

  add_index "easy_thumbnails_source", ["name"], :name => "easy_thumbnails_source_52094d6e"
  add_index "easy_thumbnails_source", ["storage_hash", "name"], :name => "storage_hash", :unique => true
  add_index "easy_thumbnails_source", ["storage_hash"], :name => "easy_thumbnails_source_3a997c55"

  create_table "easy_thumbnails_thumbnail", :force => true do |t|
    t.string   "storage_hash", :limit => 40, :null => false
    t.string   "name",                       :null => false
    t.datetime "modified",                   :null => false
    t.integer  "source_id",                  :null => false
  end

  add_index "easy_thumbnails_thumbnail", ["name"], :name => "easy_thumbnails_thumbnail_52094d6e"
  add_index "easy_thumbnails_thumbnail", ["source_id"], :name => "easy_thumbnails_thumbnail_89f89e85"
  add_index "easy_thumbnails_thumbnail", ["storage_hash", "name", "source_id"], :name => "storage_hash", :unique => true
  add_index "easy_thumbnails_thumbnail", ["storage_hash"], :name => "easy_thumbnails_thumbnail_3a997c55"

  create_table "feedback_feedback", :force => true do |t|
    t.integer  "site_id",                       :null => false
    t.string   "url",                           :null => false
    t.string   "subject"
    t.string   "email",   :limit => 75
    t.text     "text",    :limit => 2147483647, :null => false
    t.integer  "user_id"
    t.text     "request", :limit => 2147483647, :null => false
    t.datetime "created",                       :null => false
    t.integer  "status",                        :null => false
  end

  add_index "feedback_feedback", ["site_id"], :name => "feedback_feedback_6223029"
  add_index "feedback_feedback", ["user_id"], :name => "feedback_feedback_fbfc09f1"

  create_table "flat_types", :force => true do |t|
    t.string "name"
  end

  create_table "flatblocks_flatblock", :force => true do |t|
    t.string "slug",                          :null => false
    t.string "header"
    t.text   "content", :limit => 2147483647
  end

  add_index "flatblocks_flatblock", ["slug"], :name => "slug", :unique => true

  create_table "floor_types", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "fund_types", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "house_materials", :force => true do |t|
    t.string "name"
  end

  create_table "house_types", :force => true do |t|
    t.string  "name"
    t.integer "category_id"
  end

  add_index "house_types", ["category_id"], :name => "advert_housetype_realtype_id_idx"

  create_table "iBanners_banner", :force => true do |t|
    t.integer  "campaign_id",                       :null => false
    t.string   "banner_type", :limit => 1,          :null => false
    t.string   "name",        :limit => 100,        :null => false
    t.string   "foreign_url", :limit => 200,        :null => false
    t.string   "width",       :limit => 100,        :null => false
    t.string   "height",      :limit => 100,        :null => false
    t.integer  "clicks",                            :null => false
    t.integer  "shows",                             :null => false
    t.integer  "max_clicks",                        :null => false
    t.integer  "max_shows",                         :null => false
    t.datetime "begin_date"
    t.datetime "end_date"
    t.string   "swf_file",    :limit => 100
    t.string   "img_file",    :limit => 100
    t.string   "alt",         :limit => 100,        :null => false
    t.text     "comment",     :limit => 2147483647, :null => false
    t.text     "html_text",   :limit => 2147483647, :null => false
    t.string   "var"
  end

  add_index "iBanners_banner", ["campaign_id"], :name => "iBanners_banner_8fd46b1a"

  create_table "iBanners_banner_zones", :force => true do |t|
    t.integer "banner_id", :null => false
    t.integer "zone_id",   :null => false
  end

  add_index "iBanners_banner_zones", ["banner_id", "zone_id"], :name => "banner_id", :unique => true
  add_index "iBanners_banner_zones", ["banner_id"], :name => "iBanners_banner_zones_50ab1ff4"
  add_index "iBanners_banner_zones", ["zone_id"], :name => "iBanners_banner_zones_2957a812"

  create_table "iBanners_campaign", :force => true do |t|
    t.integer  "client_id",                 :null => false
    t.string   "name",       :limit => 100, :null => false
    t.datetime "begin_date"
    t.datetime "end_date"
    t.integer  "priority",                  :null => false
  end

  add_index "iBanners_campaign", ["client_id"], :name => "iBanners_campaign_4a4e8ffb"

  create_table "iBanners_client", :force => true do |t|
    t.string  "name",                :limit => 100, :null => false
    t.string  "contact",             :limit => 100, :null => false
    t.string  "email",               :limit => 100, :null => false
    t.boolean "one_banner_per_page",                :null => false
  end

  create_table "iBanners_zone", :force => true do |t|
    t.integer "site_id",                         :null => false
    t.string  "name",              :limit => 50, :null => false
    t.string  "description",                     :null => false
    t.integer "price"
    t.string  "html_after_banner",               :null => false
    t.string  "html_pre_banner",                 :null => false
  end

  add_index "iBanners_zone", ["site_id"], :name => "iBanners_zone_6223029"

  create_table "info_contacts", :force => true do |t|
    t.string  "fio",            :limit => 128
    t.string  "tel",            :limit => 128
    t.string  "tel2",           :limit => 128
    t.string  "email",          :limit => 128
    t.string  "skype",          :limit => 128
    t.string  "logocompany",    :limit => 100
    t.integer "accounttype_id",                                               :null => false
    t.integer "comision_id",                                                  :null => false
    t.decimal "comissionvalue",                :precision => 20, :scale => 2
  end

  add_index "info_contacts", ["accounttype_id"], :name => "advert_contactinfo_86d2685e"
  add_index "info_contacts", ["comision_id"], :name => "advert_contactinfo_14820911"

  create_table "interkassa_config", :force => true do |t|
    t.string "ik_shop_id",        :null => false
    t.string "ik_success_url",    :null => false
    t.string "ik_success_method", :null => false
    t.string "ik_fail_url",       :null => false
    t.string "ik_fail_method",    :null => false
    t.string "ik_status_url",     :null => false
    t.string "ik_status_method",  :null => false
  end

  create_table "interkassa_interkassalog", :force => true do |t|
    t.integer  "ik_user_id_id",                       :null => false
    t.datetime "create_date",                         :null => false
    t.string   "ik_payment_amount",    :limit => 100, :null => false
    t.integer  "ik_payment_id",                       :null => false
    t.string   "ik_payment_desc",                     :null => false
    t.string   "ik_paysystem_alias",                  :null => false
    t.integer  "ik_payment_timestamp",                :null => false
    t.string   "ik_baggage_fields",                   :null => false
    t.string   "ik_payment_state",                    :null => false
    t.string   "ik_trans_id",                         :null => false
    t.float    "ik_currency_exch",                    :null => false
    t.integer  "ik_fees_payer",                       :null => false
    t.string   "ik_sign_hash",                        :null => false
  end

  add_index "interkassa_interkassalog", ["ik_payment_id"], :name => "ik_payment_id", :unique => true
  add_index "interkassa_interkassalog", ["ik_user_id_id"], :name => "interkassa_interkassalog_2c8174c"

  create_table "layouts", :force => true do |t|
    t.integer "advert_id"
    t.string  "image",     :limit => 256
  end

  add_index "layouts", ["advert_id"], :name => "advert_photoposter_dbc21818"

  create_table "metro_stations", :force => true do |t|
    t.string  "name"
    t.integer "city_id", :null => false
  end

  add_index "metro_stations", ["city_id"], :name => "advert_metro_586a73b5"

  create_table "movies", :force => true do |t|
    t.integer "advert_id"
    t.text    "video",     :limit => 2147483647
  end

  add_index "movies", ["advert_id"], :name => "advert_youtube_f1d84fd4"

  create_table "office_costtype", :force => true do |t|
    t.string "name"
  end

  create_table "office_emessage", :force => true do |t|
    t.string   "email_from", :limit => 128
    t.string   "email_to",   :limit => 128
    t.string   "subject",    :limit => 128
    t.text     "body",       :limit => 2147483647, :null => false
    t.datetime "created",                          :null => false
    t.boolean  "delivery"
    t.boolean  "readed"
  end

  create_table "office_filearchive", :force => true do |t|
    t.string  "realname",  :limit => 128
    t.string  "docfile",   :limit => 100
    t.integer "folder_id",                :null => false
    t.integer "owner_id",                 :null => false
  end

  add_index "office_filearchive", ["folder_id"], :name => "office_filearchive_folder_id_idx"
  add_index "office_filearchive", ["owner_id"], :name => "office_filearchive_owner_id_idx"

  create_table "office_folderarchive", :force => true do |t|
    t.string  "name",      :limit => 128
    t.integer "parent_id"
  end

  add_index "office_folderarchive", ["parent_id"], :name => "office_folderarchive_parent_id_idx"

  create_table "office_message", :force => true do |t|
    t.integer  "user_from_id",                       :null => false
    t.integer  "user_to_id",                         :null => false
    t.string   "subject",      :limit => 128
    t.text     "body",         :limit => 2147483647, :null => false
    t.datetime "created",                            :null => false
    t.boolean  "delivery"
    t.boolean  "readed"
  end

  add_index "office_message", ["user_from_id"], :name => "user_from_id_refs_id_84e19b12"
  add_index "office_message", ["user_to_id"], :name => "user_to_id_refs_id_84e19b12"

  create_table "office_messagefolder", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "office_objectcost", :force => true do |t|
    t.integer "advert_id",                                                        :null => false
    t.integer "cost_id",                                                          :null => false
    t.text    "description", :limit => 2147483647,                                :null => false
    t.decimal "summa",                             :precision => 10, :scale => 2
  end

  add_index "office_objectcost", ["advert_id"], :name => "advert_id_refs_id_3ec97f3d"
  add_index "office_objectcost", ["cost_id"], :name => "cost_id_refs_id_ec6b87f2"

  create_table "office_objectpayment", :force => true do |t|
    t.integer "advert_id",                                                        :null => false
    t.integer "payment_id",                                                       :null => false
    t.text    "description", :limit => 2147483647,                                :null => false
    t.decimal "summa",                             :precision => 10, :scale => 2
  end

  add_index "office_objectpayment", ["advert_id"], :name => "advert_id_refs_id_6e64c25f"
  add_index "office_objectpayment", ["payment_id"], :name => "payment_id_refs_id_d6ad879c"

  create_table "office_officecontactinfo", :force => true do |t|
    t.integer "owner_id",                                                     :null => false
    t.string  "fio",            :limit => 128
    t.string  "tel",            :limit => 128
    t.string  "tel2",           :limit => 128
    t.string  "email",          :limit => 128
    t.string  "skype",          :limit => 128
    t.string  "logocompany",    :limit => 100
    t.integer "accounttype_id",                                               :null => false
    t.integer "comision_id",                                                  :null => false
    t.decimal "comissionvalue",                :precision => 20, :scale => 2
  end

  add_index "office_officecontactinfo", ["accounttype_id"], :name => "accounttype_id_refs_id_6c8ed493"
  add_index "office_officecontactinfo", ["comision_id"], :name => "comision_id_refs_id_f3cceca1"
  add_index "office_officecontactinfo", ["owner_id"], :name => "owner_id_refs_id_19ce67b"

  create_table "office_paymenttype", :force => true do |t|
    t.string "name"
  end

  create_table "office_project", :force => true do |t|
    t.string  "title",       :limit => 128
    t.text    "description", :limit => 2147483647, :null => false
    t.integer "owner_id",                          :null => false
    t.date    "date_start",                        :null => false
    t.date    "date_end",                          :null => false
    t.integer "percenttask",                       :null => false
  end

  add_index "office_project", ["owner_id"], :name => "owner_id_refs_id_811271bc"

  create_table "office_task", :force => true do |t|
    t.string   "title",       :limit => 128
    t.text     "description", :limit => 2147483647, :null => false
    t.integer  "project_id",                        :null => false
    t.integer  "priority",                          :null => false
    t.datetime "created",                           :null => false
    t.date     "date_end",                          :null => false
    t.integer  "state_id",                          :null => false
    t.integer  "worker_id"
    t.boolean  "terminate"
  end

  add_index "office_task", ["project_id"], :name => "project_id_refs_id_86da8788"
  add_index "office_task", ["state_id"], :name => "state_id_refs_id_3fccf711"
  add_index "office_task", ["worker_id"], :name => "worker_id_refs_id_b8f8b3a1"

  create_table "office_taskstate", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "operation_types", :force => true do |t|
    t.string "name"
  end

  create_table "people_customuser", :primary_key => "user_ptr_id", :force => true do |t|
    t.string  "firstname",    :limit => 128,        :null => false
    t.string  "middlename",   :limit => 128,        :null => false
    t.string  "lastname",     :limit => 128,        :null => false
    t.date    "birthday",                           :null => false
    t.string  "tel",          :limit => 128,        :null => false
    t.string  "skype",        :limit => 128,        :null => false
    t.string  "photo",        :limit => 100,        :null => false
    t.string  "logocompany",  :limit => 100,        :null => false
    t.integer "accounttype",                        :null => false
    t.string  "companyname",  :limit => 128,        :null => false
    t.string  "region",       :limit => 128,        :null => false
    t.string  "cityarea",     :limit => 128,        :null => false
    t.string  "city",         :limit => 128,        :null => false
    t.text    "optionalinfo", :limit => 2147483647, :null => false
  end

  create_table "people_peopleinfo", :force => true do |t|
    t.integer "user_id",                            :null => false
    t.string  "firstname",    :limit => 128
    t.string  "middlename",   :limit => 128
    t.string  "lastname",     :limit => 128
    t.date    "birthday",                           :null => false
    t.string  "tel",          :limit => 128
    t.string  "skype",        :limit => 128
    t.string  "photo",        :limit => 100
    t.string  "logocompany",  :limit => 100
    t.integer "accounttype",                        :null => false
    t.string  "companyname",  :limit => 128
    t.string  "region",       :limit => 128
    t.string  "cityarea",     :limit => 128
    t.string  "city",         :limit => 128
    t.text    "optionalinfo", :limit => 2147483647, :null => false
  end

  add_index "people_peopleinfo", ["user_id"], :name => "people_peopleinfo_fbfc09f1"

  create_table "people_userprofile", :force => true do |t|
    t.integer "user_id",                                                      :null => false
    t.string  "firstname",    :limit => 128
    t.string  "middlename",   :limit => 128
    t.string  "lastname",     :limit => 128
    t.date    "birthday",                           :default => '2011-12-04', :null => false
    t.string  "tel",          :limit => 128
    t.string  "skype",        :limit => 128
    t.string  "photo",        :limit => 100
    t.string  "logocompany",  :limit => 100
    t.integer "accounttype",                        :default => 1,            :null => false
    t.string  "companyname",  :limit => 128
    t.string  "region",       :limit => 128
    t.string  "cityarea",     :limit => 128
    t.string  "city",         :limit => 128
    t.text    "optionalinfo", :limit => 2147483647,                           :null => false
  end

  add_index "people_userprofile", ["user_id"], :name => "people_userprofile_fbfc09f1"
  add_index "people_userprofile", ["user_id"], :name => "user_id", :unique => true
  add_index "people_userprofile", ["user_id"], :name => "user_id_2", :unique => true

  create_table "pmessage_personalmessage", :force => true do |t|
    t.integer  "user_from_id",                       :null => false
    t.integer  "user_to_id",                         :null => false
    t.string   "title",        :limit => 128,        :null => false
    t.text     "message",      :limit => 2147483647, :null => false
    t.integer  "status",                             :null => false
    t.datetime "pm_date",                            :null => false
  end

  add_index "pmessage_personalmessage", ["user_from_id"], :name => "pmessage_personalmessage_ef62eb6b"
  add_index "pmessage_personalmessage", ["user_to_id"], :name => "pmessage_personalmessage_7a9b7d94"

  create_table "preporty_locations", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "purpouse_lands", :force => true do |t|
    t.string "name"
  end

  create_table "quickpages_quickpage", :force => true do |t|
    t.string   "name",        :limit => 100,        :null => false
    t.string   "title",       :limit => 100,        :null => false
    t.boolean  "published",                         :null => false
    t.string   "javascript",  :limit => 300,        :null => false
    t.string   "css",         :limit => 300,        :null => false
    t.boolean  "heading",                           :null => false
    t.text     "description", :limit => 2147483647, :null => false
    t.text     "keywords",    :limit => 2147483647, :null => false
    t.text     "comments",    :limit => 2147483647, :null => false
    t.text     "content",     :limit => 2147483647, :null => false
    t.string   "template",    :limit => 100,        :null => false
    t.datetime "updated",                           :null => false
    t.datetime "created",                           :null => false
  end

  add_index "quickpages_quickpage", ["name"], :name => "name", :unique => true

  create_table "regions", :force => true do |t|
    t.string "name"
  end

  create_table "registration_registrationprofile", :force => true do |t|
    t.integer "user_id",                      :null => false
    t.string  "activation_key", :limit => 40, :null => false
  end

  add_index "registration_registrationprofile", ["user_id"], :name => "user_id", :unique => true

  create_table "robokassa_successnotification", :force => true do |t|
    t.integer  "InvId",                    :null => false
    t.string   "OutSum",     :limit => 15, :null => false
    t.datetime "created_at",               :null => false
  end

  add_index "robokassa_successnotification", ["InvId"], :name => "robokassa_successnotification_8717ac18"

  create_table "rooms_types", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "separate_entrences", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "sitenews_category", :force => true do |t|
    t.string "title",       :limit => 200
    t.string "slug",        :limit => 50
    t.text   "description", :limit => 2147483647, :null => false
  end

  add_index "sitenews_category", ["slug"], :name => "slug", :unique => true

  create_table "sitenews_news", :force => true do |t|
    t.string   "title",         :limit => 250
    t.text     "excerpt",       :limit => 2147483647, :null => false
    t.text     "body",          :limit => 2147483647, :null => false
    t.datetime "pub_date",                            :null => false
    t.string   "slug",          :limit => 50
    t.integer  "author_id",                           :null => false
    t.integer  "status",                              :null => false
    t.integer  "categories_id",                       :null => false
    t.string   "tags"
    t.text     "excerpt_html",  :limit => 2147483647, :null => false
    t.text     "body_html",     :limit => 2147483647, :null => false
    t.string   "picture",       :limit => 100
    t.string   "picture1",      :limit => 100
    t.string   "picture2",      :limit => 100
    t.string   "picture3",      :limit => 100
  end

  add_index "sitenews_news", ["author_id"], :name => "sitenews_news_cc846901"
  add_index "sitenews_news", ["categories_id"], :name => "sitenews_news_9bfa5f2e"
  add_index "sitenews_news", ["slug"], :name => "sitenews_news_a951d5d6"

  create_table "south_migrationhistory", :force => true do |t|
    t.string   "app_name",  :null => false
    t.string   "migration", :null => false
    t.datetime "applied",   :null => false
  end

  create_table "state_repairs", :force => true do |t|
    t.string "name", :limit => 128
  end

  create_table "streets", :force => true do |t|
    t.string  "name"
    t.integer "city_id"
    t.integer "district_id"
  end

  create_table "streets_last", :force => true do |t|
    t.string  "name"
    t.integer "city_id"
  end

  add_index "streets_last", ["city_id"], :name => "advert_street_a3ca7998"

  create_table "sub_types", :force => true do |t|
    t.string "name"
  end

  create_table "tagging_tag", :force => true do |t|
    t.string "name", :limit => 50, :null => false
  end

  add_index "tagging_tag", ["name"], :name => "name", :unique => true

  create_table "tagging_taggeditem", :force => true do |t|
    t.integer "tag_id",          :null => false
    t.integer "content_type_id", :null => false
    t.integer "object_id",       :null => false
  end

  add_index "tagging_taggeditem", ["content_type_id"], :name => "tagging_taggeditem_e4470c6e"
  add_index "tagging_taggeditem", ["object_id"], :name => "tagging_taggeditem_829e37fd"
  add_index "tagging_taggeditem", ["tag_id", "content_type_id", "object_id"], :name => "tag_id", :unique => true
  add_index "tagging_taggeditem", ["tag_id"], :name => "tagging_taggeditem_3747b463"

  create_table "thumbnail_kvstore", :primary_key => "key", :force => true do |t|
    t.text "value", :limit => 2147483647, :null => false
  end

  create_table "trassa_diractions", :force => true do |t|
    t.string "name"
  end

  create_table "uprofile_profile", :primary_key => "user_id", :force => true do |t|
    t.string  "firstname",              :limit => 128
    t.string  "middlename",             :limit => 128
    t.string  "lastname",               :limit => 128
    t.date    "birthday",                                     :null => false
    t.string  "skype",                  :limit => 128
    t.string  "photo",                  :limit => 100
    t.integer "accounttype_id",                               :null => false
    t.string  "companyname",            :limit => 128
    t.string  "city",                   :limit => 128
    t.text    "optionalinfo",           :limit => 2147483647, :null => false
    t.string  "google",                 :limit => 128
    t.string  "vkontakte",              :limit => 128
    t.boolean "pmnotifycations"
    t.boolean "profilenotifycations"
    t.boolean "eula"
    t.string  "postcode",               :limit => 128
    t.boolean "email1displayincontact"
    t.boolean "email2displayincontact"
    t.string  "email2",                 :limit => 75
    t.string  "phone2",                 :limit => 128
    t.string  "pinecode",               :limit => 128
    t.string  "icq",                    :limit => 128
    t.string  "bird",                   :limit => 128
    t.boolean "advertnotifycations"
    t.string  "phone",                  :limit => 128
    t.string  "facebook",               :limit => 128
    t.string  "address",                :limit => 128
    t.string  "countryarea",            :limit => 128
    t.boolean "after18confirm"
    t.boolean "contactinfoalldisplay"
    t.string  "country",                :limit => 128
    t.boolean "searchnotifycations"
    t.string  "link",                   :limit => 128
  end

  add_index "uprofile_profile", ["accounttype_id"], :name => "accounttype_id_refs_id_b1532a5e"

  create_table "uprofile_work", :force => true do |t|
    t.string  "firstname",    :limit => 128,        :null => false
    t.string  "middlename",   :limit => 128,        :null => false
    t.string  "lastname",     :limit => 128,        :null => false
    t.date    "birthday",                           :null => false
    t.string  "tel",          :limit => 128,        :null => false
    t.string  "skype",        :limit => 128,        :null => false
    t.string  "photo",        :limit => 100,        :null => false
    t.string  "logocompany",  :limit => 100,        :null => false
    t.integer "accounttype",                        :null => false
    t.string  "companyname",  :limit => 128,        :null => false
    t.string  "region",       :limit => 128,        :null => false
    t.string  "cityarea",     :limit => 128,        :null => false
    t.string  "city",         :limit => 128,        :null => false
    t.text    "optionalinfo", :limit => 2147483647, :null => false
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

  create_table "yandex_maps_mapandaddress", :force => true do |t|
    t.string "address",    :null => false
    t.float  "longtitude"
    t.float  "latitude"
  end

  add_index "yandex_maps_mapandaddress", ["address"], :name => "yandex_maps_mapandaddress_1d339d38"

end
