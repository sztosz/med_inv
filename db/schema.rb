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

ActiveRecord::Schema.define(version: 20151003105146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contractors", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "zip_code"
    t.string   "city"
    t.integer  "nip"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contractors", ["invoice_id"], name: "index_contractors_on_invoice_id", using: :btree

  create_table "examination_lists", force: :cascade do |t|
    t.integer  "month"
    t.integer  "year"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "examination_lists", ["invoice_id"], name: "index_examination_lists_on_invoice_id", using: :btree

  create_table "examination_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "examination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "examination_types", ["examination_id"], name: "index_examination_types_on_examination_id", using: :btree

  create_table "examinations", force: :cascade do |t|
    t.string   "patient"
    t.datetime "date"
    t.integer  "examination_list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "examinations", ["examination_list_id"], name: "index_examinations_on_examination_list_id", using: :btree

  create_table "invoices", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
