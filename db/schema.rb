# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101110020817) do

  create_table "aircrafts", :force => true do |t|
    t.string   "code",       :limit => 4
    t.string   "type",                    :null => false
    t.string   "wake",       :limit => 7
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "airlines", :force => true do |t|
    t.integer  "country_id",               :null => false
    t.string   "code",       :limit => 3
    t.string   "name",       :limit => 45, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "airlines", ["country_id"], :name => "fk_airlines_countries"

  create_table "airports", :force => true do |t|
    t.integer  "country_id",                :null => false
    t.string   "code",       :limit => 3,   :null => false
    t.string   "name",       :limit => 45,  :null => false
    t.string   "location",   :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "airports", ["country_id"], :name => "fk_airports_countries"

  create_table "countries", :force => true do |t|
    t.string   "code",       :limit => 2,  :null => false
    t.string   "name",       :limit => 45, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employers", :force => true do |t|
    t.string   "name",       :limit => 45, :null => false
    t.string   "others",     :limit => 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flags", :force => true do |t|
    t.string   "code",       :limit => 10, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "injuries", :force => true do |t|
    t.string   "condition",   :limit => 45,  :null => false
    t.string   "description", :limit => 100
    t.string   "others"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name",        :limit => 45, :null => false
    t.string   "description"
    t.string   "others",      :limit => 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "occupations", :force => true do |t|
    t.string   "name",       :limit => 45, :null => false
    t.string   "others",     :limit => 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "occupation_id"
    t.string   "first",         :limit => 45
    t.string   "last",          :limit => 45
    t.string   "gender",        :limit => 6
    t.string   "phone",         :limit => 45
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "percipitations", :force => true do |t|
    t.string   "condition",   :limit => 45,  :null => false
    t.string   "description", :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "skies", :force => true do |t|
    t.string   "condition",   :limit => 45,  :null => false
    t.string   "description", :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timelosts", :force => true do |t|
    t.string   "condition",   :limit => 45,  :null => false
    t.string   "description", :limit => 100
    t.string   "others",      :limit => 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visibilities", :force => true do |t|
    t.string   "condition",                  :null => false
    t.string   "description", :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wildlives", :force => true do |t|
    t.string   "name",       :limit => 45, :null => false
    t.string   "others",     :limit => 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
