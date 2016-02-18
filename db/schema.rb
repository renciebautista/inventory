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

ActiveRecord::Schema.define(version: 20160218135627) do

  create_table "journal_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "effect",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "journals", force: :cascade do |t|
    t.integer  "location_id",     limit: 4
    t.integer  "product_id",      limit: 4
    t.integer  "journal_type_id", limit: 4
    t.integer  "qty",             limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "journals", ["journal_type_id"], name: "index_journals_on_journal_type_id", using: :btree
  add_index "journals", ["location_id"], name: "index_journals_on_location_id", using: :btree
  add_index "journals", ["product_id"], name: "index_journals_on_product_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "sku",        limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "products", ["sku"], name: "index_products_on_sku", using: :btree

  create_table "stocks", force: :cascade do |t|
    t.integer  "location_id", limit: 4
    t.integer  "product_id",  limit: 4
    t.integer  "qty",         limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "stocks", ["location_id"], name: "index_stocks_on_location_id", using: :btree
  add_index "stocks", ["product_id"], name: "index_stocks_on_product_id", using: :btree

  add_foreign_key "journals", "journal_types"
  add_foreign_key "journals", "locations"
  add_foreign_key "journals", "products"
  add_foreign_key "stocks", "locations"
  add_foreign_key "stocks", "products"
end
