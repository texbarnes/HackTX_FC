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

ActiveRecord::Schema.define(version: 20141020203838) do

  create_table "orders", force: true do |t|
    t.integer  "quantity"
    t.string   "paperStock"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "processed"
  end

  create_table "users", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.string   "org"
    t.string   "role"
    t.string   "phone"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "password_digest"
    t.string   "confirm_password"
  end

end
