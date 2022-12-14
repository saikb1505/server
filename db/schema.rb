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

ActiveRecord::Schema[7.0].define(version: 2022_11_01_173107) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "clients", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "phone_1"
    t.string "phone_2"
    t.string "email_1"
    t.string "email_2"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "department_fields", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "client_id"
    t.string "location_id"
    t.string "department_id"
    t.string "name"
    t.string "type"
    t.string "required"
    t.string "status"
    t.string "validations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "client_id"
    t.string "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_tasks", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "employee_id"
    t.string "task_id"
    t.string "etc"
    t.string "start_time"
    t.string "end_time"
    t.string "remarks"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "client_id"
    t.string "location_id"
    t.string "department_id"
    t.string "name"
    t.string "email"
    t.string "mobile"
    t.string "reporting_id"
    t.string "designation"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "client_id"
    t.string "name"
    t.string "phone_1"
    t.string "phone_2"
    t.string "email_1"
    t.string "email_2"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "lat"
    t.string "lon"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "department_id"
    t.string "name"
    t.string "description"
    t.string "etc"
    t.jsonb "data"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trackers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "employee_id"
    t.date "date"
    t.time "time"
    t.string "battery"
    t.string "signal_strength"
    t.string "lat"
    t.string "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
