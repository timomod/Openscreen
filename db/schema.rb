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

ActiveRecord::Schema.define(version: 20151204140628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "covers", force: :cascade do |t|
    t.string   "cover_image"
    t.string   "body"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "title"
  end

  create_table "events", force: :cascade do |t|
    t.string   "publish"
    t.string   "title"
    t.string   "subtitle"
    t.text     "body"
    t.string   "calendar_title"
    t.string   "calendar_body"
    t.string   "day"
    t.string   "month"
    t.string   "year"
    t.string   "start"
    t.string   "end"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "postcode"
    t.string   "city"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "week_day"
    t.string   "deadline"
    t.string   "map_url"
    t.string   "facebook"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "homepages", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
