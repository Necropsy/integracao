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

ActiveRecord::Schema.define(version: 20160621163030) do

  create_table "books", force: :cascade do |t|
    t.datetime "hour",        null: false
    t.integer  "employee_id", null: false
    t.integer  "student_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "books", ["employee_id"], name: "index_books_on_employee_id"
  add_index "books", ["student_id"], name: "index_books_on_student_id"

  create_table "employees", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "birth_date"
    t.string   "tel"
    t.string   "cpf"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "gym_id"
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true
  add_index "employees", ["gym_id"], name: "index_employees_on_gym_id"
  add_index "employees", ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true

  create_table "gyms", force: :cascade do |t|
    t.string   "name"
    t.string   "cnpj"
    t.string   "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "tel"
    t.integer  "age"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "gym_id"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true
  add_index "students", ["gym_id"], name: "index_students_on_gym_id"
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true

end
