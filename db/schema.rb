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

ActiveRecord::Schema[7.1].define(version: 2024_11_12_234041) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: :cascade do |t|
    t.string "case_"
    t.string "injury_type"
    t.string "claimant_insurance"
    t.string "policy_"
    t.string "attorney_assigned"
    t.integer "case_status"
    t.date "date_of_incident"
    t.date "date_of_retention"
    t.string "medical_providers"
    t.text "notes"
    t.bigint "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_cases_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.integer "gender"
    t.date "DOB"
    t.string "emergency_contact_name"
    t.string "emergency_contact_phone"
    t.string "drivers_license"
    t.string "insurance"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cases", "clients"
end
