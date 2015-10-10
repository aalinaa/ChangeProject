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

ActiveRecord::Schema.define(version: 20151007201736) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cathegories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "image",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "feetbacks", force: :cascade do |t|
    t.text     "text",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.integer  "mark",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "feetbacks", ["user_id"], name: "index_feetbacks_on_user_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.integer  "cart_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id", using: :btree
  add_index "line_items", ["product_id"], name: "index_line_items_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.string   "img",         limit: 255
    t.integer  "group",       limit: 4
    t.integer  "subgroup",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id",     limit: 4
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "customer_id", limit: 4
    t.integer  "owner_id",    limit: 4
    t.integer  "product_id",  limit: 4
    t.integer  "status",      limit: 4, default: 0
    t.boolean  "new",                   default: true
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "requests", ["product_id"], name: "fk_rails_2f24c9d415", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "registred"
    t.string   "registry_hash",   limit: 255
    t.string   "pass_hash",       limit: 255
    t.string   "img",             limit: 255
    t.integer  "registry_time",   limit: 4
    t.integer  "pass_time",       limit: 4
    t.integer  "country_id",      limit: 4
    t.string   "email",           limit: 255
  end

  add_index "users", ["country_id"], name: "index_users_on_country_id", using: :btree

  add_foreign_key "feetbacks", "users"
  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "products"
  add_foreign_key "requests", "products"
  add_foreign_key "users", "countries"
end
