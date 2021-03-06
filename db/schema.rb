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

ActiveRecord::Schema.define(version: 20161218035613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fleets", force: :cascade do |t|
    t.string   "name"
    t.string   "list"
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "commander_id"
    t.integer  "points_limit"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games_players", force: :cascade do |t|
    t.integer "game_id"
    t.integer "player_id"
    t.index ["game_id"], name: "index_games_players_on_game_id", using: :btree
    t.index ["player_id"], name: "index_games_players_on_player_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ships", force: :cascade do |t|
    t.integer  "x_coord"
    t.integer  "y_coord"
    t.integer  "bearing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "size"
    t.string   "ship_rule"
    t.integer  "hits"
    t.integer  "speed"
    t.integer  "turns"
    t.integer  "points"
    t.integer  "shields"
    t.integer  "turrets"
    t.integer  "fleet_id"
    t.integer  "leadership"
    t.json     "armour"
  end

end
