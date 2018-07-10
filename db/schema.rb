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

ActiveRecord::Schema.define(version: 2018_07_10_184957) do

  create_table "photos", force: :cascade do |t|
    t.boolean "done", default: false
    t.boolean "is_turtle"
    t.boolean "code"
    t.integer "head_x", default: 0
    t.integer "head_y", default: 0
    t.integer "head_occluded", default: 0
    t.integer "neck_x", default: 0
    t.integer "neck_y", default: 0
    t.integer "neck_occluded", default: 0
    t.integer "rshoulder_x", default: 0
    t.integer "rshoulder_y", default: 0
    t.integer "rshoulder_occluded", default: 0
    t.integer "lshoulder_x", default: 0
    t.integer "lshoulder_y", default: 0
    t.integer "lshoulder_occluded", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "attachment"
  end

end
