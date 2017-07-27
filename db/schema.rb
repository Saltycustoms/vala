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

ActiveRecord::Schema.define(version: 20170727075424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blanks", force: :cascade do |t|
    t.string   "name"
    t.string   "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "color_options", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_color_options_on_color_id", using: :btree
    t.index ["product_id"], name: "index_color_options_on_product_id", using: :btree
  end

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.string   "hex"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "pantone_code"
  end

  create_table "price_ranges", force: :cascade do |t|
    t.integer  "from_quantity"
    t.integer  "to_quantity"
    t.integer  "price_cents"
    t.integer  "lower_rrp_cents"
    t.integer  "higher_rrp_cents"
    t.decimal  "commission"
    t.integer  "product_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["product_id"], name: "index_price_ranges_on_product_id", using: :btree
  end

  create_table "prints", force: :cascade do |t|
    t.jsonb    "metadata"
    t.string   "type"
    t.string   "name"
    t.integer  "blank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "blank_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "currency"
    t.boolean  "custom_dye", default: false
    t.index ["blank_id"], name: "index_products_on_blank_id", using: :btree
  end

  create_table "properties", force: :cascade do |t|
    t.integer  "prop_type"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "method"
    t.jsonb    "metadata"
    t.integer  "blank_id"
  end

  create_table "sides", force: :cascade do |t|
    t.string   "name"
    t.text     "attachment_data"
    t.integer  "blank_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["blank_id"], name: "index_sides_on_blank_id", using: :btree
  end

  create_table "sizes", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_sizes_on_product_id", using: :btree
  end

  add_foreign_key "color_options", "colors"
  add_foreign_key "color_options", "products"
  add_foreign_key "price_ranges", "products"
  add_foreign_key "products", "blanks"
  add_foreign_key "sides", "blanks"
  add_foreign_key "sizes", "products"
end
