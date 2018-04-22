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

ActiveRecord::Schema.define(version: 2018_04_22_231640) do

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.string "address"
    t.string "phone_1"
    t.string "phone_2"
    t.string "fax"
    t.integer "admin_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "kind_of_service"
    t.float "order_actual_charges"
    t.float "order_estimated_charges"
    t.string "materials_used"
    t.float "materials_cost"
    t.float "labor_hours"
    t.float "labor_cost"
    t.string "service_specialist_1"
    t.string "service_specialist_2"
    t.string "service_specialist_3"
    t.string "service_specialist_4"
    t.integer "customer_id"
    t.integer "admin_id"
    t.string "order_date"
    t.text "order_description"
  end

end
