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

ActiveRecord::Schema.define(:version => 20120507002654) do

  create_table "dives", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "comments"
    t.text     "directions"
    t.string   "city"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.string   "weather"
    t.string   "equipment"
    t.string   "weight"
    t.date     "date"
    t.time     "starttime"
    t.time     "endtime"
    t.integer  "bottomtime"
    t.string   "units"
    t.integer  "depth"
    t.string   "temperature"
    t.string   "watertemp"
    t.string   "country"
    t.decimal  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.integer  "user_id"
  end

  add_index "dives", ["user_id"], :name => "index_dives_on_user_id"

  create_table "facebooks", :force => true do |t|
    t.string   "identifier",   :limit => 20
    t.string   "access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "family"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.integer  "facebook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
