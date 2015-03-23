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

ActiveRecord::Schema.define(version: 20150322235416) do

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cost_structures", force: :cascade do |t|
    t.integer  "gb_per_day"
    t.integer  "monthly_cost"
    t.integer  "annual_cost"
    t.integer  "additional_annual_fee"
    t.integer  "perpetual_cost"
    t.integer  "plan_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "billing_frequency"
  end

  add_index "cost_structures", ["plan_id"], name: "index_cost_structures_on_plan_id"

  create_table "features", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "offering_type"
    t.integer  "offering_id"
  end

  add_index "features", ["offering_id"], name: "index_features_on_offering_id"

  create_table "plan_features", force: :cascade do |t|
    t.integer  "plan_id"
    t.integer  "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "plan_features", ["feature_id"], name: "index_plan_features_on_feature_id"
  add_index "plan_features", ["plan_id"], name: "index_plan_features_on_plan_id"

  create_table "plan_offerings", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_id"
    t.integer  "user_limit"
    t.integer  "retention_period"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "plans", ["product_id"], name: "index_plans_on_product_id"

  create_table "product_features", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_features", ["feature_id"], name: "index_product_features_on_feature_id"
  add_index "product_features", ["product_id"], name: "index_product_features_on_product_id"

  create_table "product_offerings", force: :cascade do |t|
    t.string   "product_offering"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "business_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["business_id"], name: "index_products_on_business_id"

end
