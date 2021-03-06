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

ActiveRecord::Schema.define(version: 20180313022551) do

  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.integer "weight"
    t.integer "ac"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "pname"
    t.string "cname"
    t.string "prof"
    t.string "race"
    t.integer "level"
    t.integer "exp"
    t.integer "exptolvl"
    t.string "alignment"
    t.string "religion"
    t.string "pofo"
    t.string "gender"
    t.string "hair"
    t.string "eyes"
    t.integer "height"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.integer "hitpoints"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "uses"
    t.string "name"
    t.integer "weight"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.integer "strmin"
    t.integer "strmax"
    t.integer "dexmin"
    t.integer "dexmax"
    t.integer "conmin"
    t.integer "conmax"
    t.integer "intmin"
    t.integer "intmax"
    t.integer "wismin"
    t.integer "wismax"
    t.integer "chamin"
    t.integer "chamax"
    t.integer "adj1"
    t.integer "adj2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "adj3"
    t.integer "adj4"
    t.integer "adj5"
    t.integer "adj6"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "str"
    t.integer "dex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.integer "character_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.integer "weight"
    t.string "size"
    t.string "type"
    t.integer "speed"
    t.string "damagesm"
    t.string "damagel"
    t.integer "rof"
    t.integer "ranges"
    t.integer "rangem"
    t.integer "rangel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
