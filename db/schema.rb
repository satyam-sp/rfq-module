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

ActiveRecord::Schema.define(version: 20171110122206) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart_items", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cart_id"
    t.integer "variant_id", null: false
    t.integer "quantity", default: 1
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "user_id"
    t.integer "notification_type"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.decimal "price", precision: 8, scale: 2
    t.decimal "total", precision: 8, scale: 2
    t.integer "order_id", null: false
    t.integer "variant_id", null: false
    t.string "state", null: false
    t.integer "tax_rate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "number"
    t.string "ip_address"
    t.string "email"
    t.string "state"
    t.integer "user_id"
    t.integer "bill_address_id"
    t.integer "ship_address_id"
    t.integer "coupon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_types", force: :cascade do |t|
    t.string "name"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "product_type_id"
    t.string "permalink"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 2
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variants", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.decimal "cost"
    t.integer "product_id"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end