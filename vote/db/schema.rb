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

ActiveRecord::Schema.define(version: 20141230135942) do

  create_table "ballot_measures", force: true do |t|
    t.string   "number"
    t.string   "title"
    t.float    "funding"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ballots", force: true do |t|
    t.string   "vote"
    t.integer  "voter_id"
    t.integer  "ballot_measure_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voters", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "party"
    t.integer  "district"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "voters", ["email"], name: "index_voters_on_email", unique: true
  add_index "voters", ["reset_password_token"], name: "index_voters_on_reset_password_token", unique: true

end
