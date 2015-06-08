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

ActiveRecord::Schema.define(version: 20150312190233) do

  create_table "assignment_grades", force: :cascade do |t|
    t.string   "assignment"
    t.string   "letter_grade"
    t.float    "percent_grade"
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "assignment_grades", ["course_id"], name: "index_assignment_grades_on_course_id"
  add_index "assignment_grades", ["student_id"], name: "index_assignment_grades_on_student_id"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "credits"
    t.string   "term"
    t.string   "instructor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "major"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo"
  end

end
