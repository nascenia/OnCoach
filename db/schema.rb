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

ActiveRecord::Schema.define(version: 20150629082750) do

  create_table "events", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercise_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "ancestry",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "exercise_sessions", force: :cascade do |t|
    t.integer  "training_session_template_id", limit: 4
    t.integer  "exercise_id",                  limit: 4
    t.string   "phase",                        limit: 255
    t.integer  "intensity",                    limit: 4
    t.integer  "repetitions",                  limit: 4
    t.integer  "num_of_series",                limit: 4
    t.integer  "resting_period",               limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.string   "exercise_type",        limit: 255
    t.text     "description",          limit: 65535
    t.string   "image",                limit: 255
    t.string   "youtube_video_link",   limit: 255
    t.integer  "calories",             limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "avatar",               limit: 255
    t.integer  "exercise_category_id", limit: 4
  end

  create_table "fullcalendar_engine_event_series", force: :cascade do |t|
    t.integer  "frequency",  limit: 4,   default: 1
    t.string   "period",     limit: 255, default: "monthly"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",    limit: 1,   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fullcalendar_engine_events", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",         limit: 1,     default: false
    t.text     "description",     limit: 65535
    t.integer  "event_series_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fullcalendar_engine_events", ["event_series_id"], name: "index_fullcalendar_engine_events_on_event_series_id", using: :btree

  create_table "muscle_groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "muscles", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "muscle_group_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "targeted_muscles", force: :cascade do |t|
    t.integer  "exercise_id", limit: 4
    t.integer  "muscle_id",   limit: 4
    t.boolean  "primary",     limit: 1
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "training_plan_templates", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "owner_id",   limit: 4
    t.date     "start_date"
  end

  create_table "training_session_templates", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "owner_id",   limit: 4
  end

  create_table "training_sessions", force: :cascade do |t|
    t.integer  "training_plan_template_id",    limit: 4
    t.integer  "training_session_template_id", limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.datetime "start_at"
    t.integer  "client_id",                    limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type",                   limit: 255
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
