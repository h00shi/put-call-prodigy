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

ActiveRecord::Schema.define(version: 20170708182901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: :cascade do |t|
    t.string "ticker"
    t.float "strike_price"
    t.float "spot_price"
    t.float "sold_price"
    t.integer "interval"
    t.float "gain_loss"
    t.datetime "expiration_date"
    t.integer "status"
    t.string "put_call"
    t.bigint "user_id"
    t.bigint "equity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equity_id"], name: "index_contracts_on_equity_id"
    t.index ["user_id"], name: "index_contracts_on_user_id"
  end

  create_table "equities", force: :cascade do |t|
    t.string "ticker"
    t.string "company_name"
    t.text "description"
    t.decimal "roc"
    t.decimal "rsl"
    t.decimal "mfl"
    t.decimal "adx"
    t.decimal "obv"
    t.decimal "sma"
    t.decimal "ema"
    t.decimal "stoch_d"
    t.decimal "stoch_k"
    t.decimal "price_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.integer "bank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
