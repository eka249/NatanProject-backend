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

ActiveRecord::Schema.define(version: 2020_03_09_013209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.integer "CustomerID"
    t.string "CompanyName"
    t.string "City"
    t.string "Country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "LastName"
    t.string "FirstName"
    t.string "City"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders_facts", force: :cascade do |t|
    t.integer "CustomerID"
    t.integer "ProductID"
    t.integer "EmployeeID"
    t.integer "SupplierID"
    t.float "Price"
    t.integer "Quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "ProductName"
    t.integer "SupplierID"
    t.integer "CategoryID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "CompanyName"
    t.string "ContactName"
    t.string "City"
    t.string "Country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
