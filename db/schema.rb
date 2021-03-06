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

ActiveRecord::Schema.define(version: 2020_05_03_205834) do

  create_table "cars", force: :cascade do |t|
    t.string "manufacturer"
    t.text "model"
    t.string "fuel"
    t.string "colour"
    t.text "engine"
    t.text "description"
    t.integer "year"
    t.integer "price"
    t.string "img_url"
    t.integer "user_id"
    t.string "pickup"
    t.string "postcode"
    t.integer "renter_id"
    t.datetime "hirestart"
    t.datetime "hirefinish"
    t.integer "doors"
    t.string "transmission"
    t.integer "passengers"
    t.string "bootspace"
    t.string "status"
    t.integer "request_id"
    t.string "response"
    t.integer "rentcount"
  end

  create_table "histories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "car_id"
    t.datetime "date"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "name"
    t.text "review_text"
    t.integer "no_of_stars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "car_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.integer "renter_id"
    t.string "type"
    t.string "firstname"
    t.string "lastname"
    t.date "dob"
    t.string "firstline"
    t.string "postcode"
    t.integer "mobile"
    t.string "terms"
    t.string "img_url"
    t.integer "rentcount"
    t.integer "total"
  end

end
