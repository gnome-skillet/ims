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

ActiveRecord::Schema.define(version: 20140220074041) do

  create_table "addresses", force: true do |t|
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "street"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cabinets", force: true do |t|
    t.string   "number"
    t.float    "temperature"
    t.integer  "Room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cabinets", ["Room_id"], name: "index_cabinets_on_Room_id"

  create_table "catalogs", force: true do |t|
    t.string   "partnumber"
    t.integer  "count"
    t.float    "amount_per_container"
    t.string   "unit"
    t.integer  "vendor_id"
    t.integer  "material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "catalogs", ["material_id"], name: "index_catalogs_on_material_id"
  add_index "catalogs", ["vendor_id"], name: "index_catalogs_on_vendor_id"

  create_table "dispositions", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", force: true do |t|
    t.string   "units"
    t.float    "amount"
    t.integer  "recipe_id"
    t.integer  "material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredients", ["recipe_id"], name: "index_ingredients_on_recipe_id"
  add_index "ingredients", ["material_id"], name: "index_ingredients_on_material_id"

  create_table "materials", force: true do |t|
    t.string   "description"
    t.string   "smn"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "disposition"
  end

  create_table "orders", force: true do |t|
    t.date     "order_date"
    t.integer  "catalog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["catalog_id"], name: "index_orders_on_catalog_id"

  create_table "recipes", force: true do |t|
    t.integer  "parent_material_id"
    t.integer  "material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipes", ["material_id"], name: "index_recipes_on_material_id"

  create_table "rooms", force: true do |t|
    t.string   "number"
    t.integer  "Address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rooms", ["Address_id"], name: "index_rooms_on_Address_id"

  create_table "shelves", force: true do |t|
    t.string   "number"
    t.integer  "Cabinet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shelves", ["Cabinet_id"], name: "index_shelves_on_Cabinet_id"

  create_table "users", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "sid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
