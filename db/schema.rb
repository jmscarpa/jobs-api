# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_14_010647) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "submission_id", null: false
    t.text "content", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["submission_id"], name: "index_comments_on_submission_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.datetime "sent_at"
    t.string "name"
    t.string "whatsapp"
    t.string "location"
    t.integer "age"
    t.string "working"
    t.string "raw_salary"
    t.float "expected_salary"
    t.text "professional_experience"
    t.text "english_professional_experience"
    t.text "home_office"
    t.text "team_work"
    t.text "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0, null: false
    t.string "city"
    t.string "state"
  end

  add_foreign_key "comments", "submissions"
end
