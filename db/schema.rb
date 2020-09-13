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

ActiveRecord::Schema.define(version: 2020_08_25_000213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "browsers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "date_of_birth"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "country"
    t.string "profile_img_url"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "card_number"
    t.string "month"
    t.string "year"
    t.string "cvv"
    t.string "card_type"
    t.string "first_name"
    t.string "last_name"
    t.string "address_line_one"
    t.string "address_line_two"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "country"
    t.bigint "pro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pro_id"], name: "index_payment_methods_on_pro_id"
  end

  create_table "pros", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "date_of_birth"
    t.string "business_name"
    t.string "business_mission"
    t.string "business_year_founded"
    t.string "business_website"
    t.string "business_industry"
    t.string "address_line_one"
    t.string "address_line_two"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "country"
    t.string "profile_img_url"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prosp_comments", force: :cascade do |t|
    t.string "content"
    t.bigint "browser_id", null: false
    t.bigint "prosp_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["browser_id"], name: "index_prosp_comments_on_browser_id"
    t.index ["prosp_id"], name: "index_prosp_comments_on_prosp_id"
  end

  create_table "prosp_images", force: :cascade do |t|
    t.string "img_url"
    t.string "img_type"
    t.bigint "prosp_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prosp_id"], name: "index_prosp_images_on_prosp_id"
  end

  create_table "prosp_likes", force: :cascade do |t|
    t.bigint "browser_id", null: false
    t.bigint "pro_id", null: false
    t.bigint "prosp_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["browser_id"], name: "index_prosp_likes_on_browser_id"
    t.index ["pro_id"], name: "index_prosp_likes_on_pro_id"
    t.index ["prosp_id"], name: "index_prosp_likes_on_prosp_id"
  end

  create_table "prosps", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.bigint "pro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pro_id"], name: "index_prosps_on_pro_id"
  end

  create_table "recommendation_comments", force: :cascade do |t|
    t.string "content"
    t.bigint "browser_id", null: false
    t.bigint "recommendation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["browser_id"], name: "index_recommendation_comments_on_browser_id"
    t.index ["recommendation_id"], name: "index_recommendation_comments_on_recommendation_id"
  end

  create_table "recommendation_images", force: :cascade do |t|
    t.string "img_url"
    t.string "img_type"
    t.bigint "recommendation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recommendation_id"], name: "index_recommendation_images_on_recommendation_id"
  end

  create_table "recommendation_likes", force: :cascade do |t|
    t.bigint "browser_id", null: false
    t.bigint "recommendation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["browser_id"], name: "index_recommendation_likes_on_browser_id"
    t.index ["recommendation_id"], name: "index_recommendation_likes_on_recommendation_id"
  end

  create_table "recommendations", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.bigint "browser_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["browser_id"], name: "index_recommendations_on_browser_id"
  end

  add_foreign_key "payment_methods", "pros"
  add_foreign_key "prosp_comments", "browsers"
  add_foreign_key "prosp_comments", "prosps"
  add_foreign_key "prosp_images", "prosps"
  add_foreign_key "prosp_likes", "browsers"
  add_foreign_key "prosp_likes", "pros"
  add_foreign_key "prosp_likes", "prosps"
  add_foreign_key "prosps", "pros"
  add_foreign_key "recommendation_comments", "browsers"
  add_foreign_key "recommendation_comments", "recommendations"
  add_foreign_key "recommendation_images", "recommendations"
  add_foreign_key "recommendation_likes", "browsers"
  add_foreign_key "recommendation_likes", "recommendations"
  add_foreign_key "recommendations", "browsers"
end
