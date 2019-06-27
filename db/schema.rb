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

ActiveRecord::Schema.define(version: 2019_06_25_190324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "performance_commitment_id"
    t.index ["performance_commitment_id"], name: "index_comments_on_performance_commitment_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performance_commitments", force: :cascade do |t|
    t.text "commitment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "performance_evaluation_id"
    t.index ["performance_evaluation_id"], name: "index_performance_commitments_on_performance_evaluation_id"
  end

  create_table "performance_evaluations", force: :cascade do |t|
    t.text "title"
    t.date "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "employee_id"
    t.index ["employee_id"], name: "index_performance_evaluations_on_employee_id"
  end

  add_foreign_key "comments", "performance_commitments"
  add_foreign_key "performance_commitments", "performance_evaluations"
  add_foreign_key "performance_evaluations", "employees"
end
