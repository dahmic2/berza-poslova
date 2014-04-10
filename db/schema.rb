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

ActiveRecord::Schema.define(version: 20140410173110) do

  create_table "admins", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "advartisments", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "published"
    t.date     "expire"
    t.integer  "employer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.string   "category"
  end

  add_index "advartisments", ["employer_id"], name: "index_advartisments_on_employer_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cvs", force: true do |t|
    t.text     "work_experience"
    t.text     "education"
    t.text     "personal_skills"
    t.text     "additional_information"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cvs", ["user_id"], name: "index_cvs_on_user_id"

  create_table "employers", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "location"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  create_table "notifications", force: true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notifications", ["category_id"], name: "index_notifications_on_category_id"
  add_index "notifications", ["user_id"], name: "index_notifications_on_user_id"

  create_table "projects", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simple_captcha_data", force: true do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "adress"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.boolean  "active"
    t.string   "activation_token"
  end

end
