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

ActiveRecord::Schema.define(version: 20150102175917) do

  create_table "admins", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "remember_digest"
    t.boolean  "admin",                  default: false
    t.string   "vcard"
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
  end

  #add_index "users", ["email"], name: "index_users_on_email", unique: true
  #add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end