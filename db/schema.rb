ActiveRecord::Schema.define(version: 20161130022519) do
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
