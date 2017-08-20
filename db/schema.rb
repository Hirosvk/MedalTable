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

ActiveRecord::Schema.define(version: 20170819212910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "display_name"
    t.string "gender", null: false
    t.integer "event_id"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_athletes_on_country_id"
    t.index ["event_id"], name: "index_athletes_on_event_id"
  end

  create_table "athletes_teams", id: false, force: :cascade do |t|
    t.integer "athlete_id", null: false
    t.integer "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["athlete_id", "team_id"], name: "index_athletes_teams_on_athlete_id_and_team_id", unique: true
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "abbreviated_name"
    t.string "common_name"
    t.index ["abbreviated_name"], name: "index_countries_on_abbreviated_name"
    t.index ["name"], name: "index_countries_on_name", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.string "gender", null: false
    t.datetime "date"
    t.string "gold_medal_type"
    t.bigint "gold_medal_id"
    t.string "silver_medal_type"
    t.bigint "silver_medal_id"
    t.string "bronze_medal_type"
    t.bigint "bronze_medal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bronze_medal_type", "bronze_medal_id"], name: "index_events_on_bronze_medal_type_and_bronze_medal_id"
    t.index ["gold_medal_type", "gold_medal_id"], name: "index_events_on_gold_medal_type_and_gold_medal_id"
    t.index ["name", "gender"], name: "index_events_on_name_and_gender", unique: true
    t.index ["silver_medal_type", "silver_medal_id"], name: "index_events_on_silver_medal_type_and_silver_medal_id"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "country_id", null: false
    t.integer "event_id", null: false
    t.string "gender", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id", "event_id"], name: "index_teams_on_country_id_and_event_id", unique: true
  end

end
