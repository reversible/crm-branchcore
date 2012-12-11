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

ActiveRecord::Schema.define(:version => 20121007175112) do

  create_table "accounts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "business_type_id"
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "description"
    t.string   "account_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "business_types", :force => true do |t|
    t.string   "sector"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "status"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "opportunities", :force => true do |t|
    t.integer  "user_id"
    t.integer  "account_id"
    t.decimal  "amount",      :precision => 8, :scale => 2
    t.string   "status"
    t.string   "description"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "tasks", :force => true do |t|
    t.integer  "account_id"
    t.integer  "user_id"
    t.integer  "contact_id"
    t.string   "subject"
    t.string   "status"
    t.datetime "start_date"
    t.datetime "limit_date"
    t.datetime "end_date"
    t.integer  "priority"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "hashed_password"
    t.string   "email"
    t.boolean  "is_admin"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "salt",            :limit => 40
  end

end
