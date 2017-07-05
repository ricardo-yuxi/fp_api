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

ActiveRecord::Schema.define(version: 20170705200704) do

  create_table "orders", force: :cascade do |t|
    t.string   "deliver_order_number"
    t.integer  "local_status",         default: 0
    t.integer  "auth_state"
    t.text     "notes"
    t.integer  "user_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.integer  "quantity"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_positions_on_order_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "usercode"
    t.string   "full_name"
    t.integer  "role",       default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
