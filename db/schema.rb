# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 0) do

  create_table "movies", force: :cascade do |t|
    t.string   "name",         limit: 45,  null: false
    t.integer  "age",          limit: 4
    t.string   "image",        limit: 255, null: false
    t.date     "release_date",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",      limit: 100,   null: false
    t.text     "text",       limit: 65535, null: false
    t.string   "image",      limit: 100
    t.datetime "date",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "theater_id", limit: 4,  null: false
    t.string   "name",       limit: 45, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rooms", ["theater_id"], name: "fk_room_theater", using: :btree

  create_table "sessions", force: :cascade do |t|
    t.integer  "room_id",    limit: 4, null: false
    t.integer  "movie_id",   limit: 4, null: false
    t.datetime "date",                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["movie_id"], name: "fk_session_movie", using: :btree
  add_index "sessions", ["room_id"], name: "fk_session_room", using: :btree

  create_table "theaters", force: :cascade do |t|
    t.string   "name",       limit: 45,  null: false
    t.string   "city",       limit: 45,  null: false
    t.string   "image",      limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "rooms", "theaters", name: "fk_room_theater"
  add_foreign_key "sessions", "movies", name: "fk_session_movie"
  add_foreign_key "sessions", "rooms", name: "fk_session_room"
end
