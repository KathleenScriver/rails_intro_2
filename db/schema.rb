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

ActiveRecord::Schema.define(version: 2019_12_10_173130) do

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "stock"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "smoothie_ingredients", force: :cascade do |t|
    t.integer "smoothie_id", null: false
    t.integer "ingredient_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_smoothie_ingredients_on_ingredient_id"
    t.index ["smoothie_id"], name: "index_smoothie_ingredients_on_smoothie_id"
  end

  create_table "smoothies", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "smoothie_ingredients", "ingredients"
  add_foreign_key "smoothie_ingredients", "smoothies", column: "smoothie_id"
end
