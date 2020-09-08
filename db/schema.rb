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

ActiveRecord::Schema.define(version: 2020_09_08_155837) do

  create_table "gamers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "game_id", null: false
    t.string "invite_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_gamers_on_game_id"
    t.index ["user_id"], name: "index_gamers_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "draft_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_pools", force: :cascade do |t|
    t.integer "pool_id", null: false
    t.integer "player_id", null: false
    t.boolean "picked"
    t.integer "picked_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["picked_by_id"], name: "index_player_pools_on_picked_by_id"
    t.index ["player_id"], name: "index_player_pools_on_player_id"
    t.index ["pool_id"], name: "index_player_pools_on_pool_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "playername"
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pools", force: :cascade do |t|
    t.integer "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_pools_on_game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "name"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "gamers", "games"
  add_foreign_key "gamers", "users"
  add_foreign_key "player_pools", "players"
  add_foreign_key "player_pools", "pools"
  add_foreign_key "player_pools", "users", column: "picked_by_id"
  add_foreign_key "pools", "games"
end
