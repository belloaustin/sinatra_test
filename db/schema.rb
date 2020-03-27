# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_27_210322) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", id: :integer, default: nil, force: :cascade do |t|
    t.string "name", limit: 20
    t.integer "price"
  end

  create_table "dialogflowdb", primary_key: "session_id", id: :bigint, default: nil, force: :cascade do |t|
    t.bigint "bw_num"
    t.bigint "customer_num"
    t.text "message_text"
    t.text "direction"
    t.text "intent"
    t.integer "intent_score"
  end

  create_table "foo", primary_key: "foo_id", id: :integer, default: nil, force: :cascade do |t|
  end

  create_table "models", id: :serial, force: :cascade do |t|
    t.string "name"
  end

end
