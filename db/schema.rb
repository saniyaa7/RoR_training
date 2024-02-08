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

ActiveRecord::Schema[7.1].define(version: 2024_02_01_100638) do
  create_table "book_statuses", force: :cascade do |t|
    t.string "status_name"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_statuses_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "book_title"
    t.string "book_name"
    t.string "publisher"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "borrowings", force: :cascade do |t|
    t.date "date_borrowed"
    t.date "date_return"
    t.integer "book_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_borrowings_on_book_id"
    t.index ["student_id"], name: "index_borrowings_on_student_id"
  end

  create_table "keep_tracks", force: :cascade do |t|
    t.integer "student_id"
    t.integer "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_id"], name: "index_keep_tracks_on_staff_id"
    t.index ["student_id"], name: "index_keep_tracks_on_student_id"
  end

  create_table "reports", force: :cascade do |t|
    t.datetime "report_date"
    t.integer "transaction_id"
    t.integer "borrowing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["borrowing_id"], name: "index_reports_on_borrowing_id"
    t.index ["transaction_id"], name: "index_reports_on_transaction_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_staffs_on_book_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.integer "age"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "transaction_name"
    t.datetime "transaction_date"
    t.string "transaction_amount"
    t.integer "student_id"
    t.integer "borrowing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["borrowing_id"], name: "index_transactions_on_borrowing_id"
    t.index ["student_id"], name: "index_transactions_on_student_id"
  end

  add_foreign_key "book_statuses", "books"
  add_foreign_key "borrowings", "books"
  add_foreign_key "borrowings", "students"
  add_foreign_key "keep_tracks", "staffs"
  add_foreign_key "keep_tracks", "students"
  add_foreign_key "reports", "borrowings"
  add_foreign_key "reports", "transactions"
  add_foreign_key "staffs", "books"
  add_foreign_key "transactions", "borrowings"
  add_foreign_key "transactions", "students"
end
