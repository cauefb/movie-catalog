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

ActiveRecord::Schema[7.2].define(version: 2024_10_06_005059) do
  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.date "birth_date"
    t.string "favorite_genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "release_year"
    t.text "synopsis"
    t.string "country_of_origin"
    t.integer "duration"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "genre_id", default: 0, null: false
    t.index ["genre_id"], name: "index_movies_on_genre_id"
  end

  add_foreign_key "movies", "genres"
end
