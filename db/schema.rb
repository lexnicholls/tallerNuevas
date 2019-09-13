# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_13_004818) do

  create_table "appointments", force: :cascade do |t|
    t.integer "office_id", null: false
    t.integer "doctor_id", null: false
    t.string "doctor_name"
    t.string "doctor_surname"
    t.integer "patient_id", null: false
    t.string "patient_name"
    t.string "patient_surname"
    t.date "appointment_date"
    t.datetime "start_Time"
    t.datetime "end_Time"
    t.string "appointment_Purpose"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["office_id"], name: "index_appointments_on_office_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "id_number"
    t.integer "cellphone_number"
    t.integer "specialty_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialty_id"], name: "index_doctors_on_specialty_id"
  end

  create_table "office_types", force: :cascade do |t|
    t.integer "officeType_id"
    t.string "officeType_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "offices", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "location"
    t.integer "office_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["office_type_id"], name: "index_offices_on_office_type_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.date "birth_date"
    t.integer "id_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.integer "specialty_id"
    t.string "profession"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "offices"
  add_foreign_key "appointments", "patients"
  add_foreign_key "doctors", "specialties"
  add_foreign_key "offices", "office_types"
end
