# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_23_130049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brew_methods", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "equipment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coffee_beans", force: :cascade do |t|
    t.string "name"
    t.bigint "roaster_id", null: false
    t.string "roast"
    t.boolean "whole_bean"
    t.text "description"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "blend_type"
    t.string "region"
    t.string "processing_method"
    t.string "drying_method"
    t.string "roast_date"
    t.index ["roaster_id"], name: "index_coffee_beans_on_roaster_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.bigint "brew_method_id", null: false
    t.float "temperature"
    t.string "water"
    t.bigint "coffee_beans_id", null: false
    t.string "grind"
    t.string "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "filter"
    t.string "bloom_time"
    t.index ["brew_method_id"], name: "index_recipes_on_brew_method_id"
    t.index ["coffee_beans_id"], name: "index_recipes_on_coffee_beans_id"
  end

  create_table "roasters", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "year_founded"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "website"
  end

  add_foreign_key "coffee_beans", "roasters"
  add_foreign_key "recipes", "brew_methods"
  add_foreign_key "recipes", "coffee_beans", column: "coffee_beans_id"
end
