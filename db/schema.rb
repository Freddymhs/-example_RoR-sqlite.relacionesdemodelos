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

ActiveRecord::Schema.define(version: 2021_02_18_155406) do

  create_table "computers", force: :cascade do |t|
    t.string "marca"
    t.string "pulgadas"
    t.string "so"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hub_usbs", force: :cascade do |t|
    t.string "nropuertos"
    t.string "marca"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "computer_id", default: 1, null: false
    t.index ["computer_id"], name: "index_hub_usbs_on_computer_id"
  end

  create_table "peripherals", force: :cascade do |t|
    t.string "nombre"
    t.string "marca"
    t.string "inalambrico"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "hub_usb_id", default: 1, null: false
    t.index ["hub_usb_id"], name: "index_peripherals_on_hub_usb_id"
  end

  add_foreign_key "hub_usbs", "computers"
  add_foreign_key "peripherals", "hub_usbs"
end
